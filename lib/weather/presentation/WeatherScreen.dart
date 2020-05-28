import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterweatherapp/weather/bloc/WeatherBloc.dart';
import 'package:flutterweatherapp/weather/bloc/WeatherEvent.dart';
import 'package:flutterweatherapp/weather/bloc/WeatherState.dart';
import 'package:flutterweatherapp/weather/data/network/WeatherNetworkDataSourceImpl.dart';
import 'package:flutterweatherapp/weather/data/network/weather_api_service.dart';
import 'package:flutterweatherapp/weather/data/repositories/WeatherRepositoryImpl.dart';
import 'package:flutterweatherapp/weather/domain/WeatherNetworkDataSource.dart';
import 'package:flutterweatherapp/weather/domain/WeatherRepository.dart';

class WeatherScreen extends StatelessWidget {
  static WeatherApiService apiService = WeatherApiService.create();
  static WeatherNetworkDataSource dataSource =
      WeatherNetworkDataSourceImpl(apiService);
  final WeatherRepository repository = WeatherRepositoryImpl(dataSource);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(repository: repository),
      child: Weather(),
    );
  }
}

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    BlocProvider.of<WeatherBloc>(context).add(FetchWeather(city: '44418'));

    return Center(
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (cotext, state) {
          if (state is WeatherSuccess) {
            return Text("${state.weather.description}");
          }
          if (state is WeatherError) {
            return Text("Error");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
