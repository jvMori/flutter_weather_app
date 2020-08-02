import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterweatherapp/location/data/LocationNetworkDataSourceImpl.dart';
import 'package:flutterweatherapp/location/data/LocationRepositoryImpl.dart';
import 'package:flutterweatherapp/location/domain/LocationNetworkDataSource.dart';
import 'package:flutterweatherapp/location/domain/LocationRepository.dart';
import 'package:flutterweatherapp/weather/bloc/WeatherBloc.dart';
import 'package:flutterweatherapp/weather/bloc/WeatherEvent.dart';
import 'package:flutterweatherapp/weather/bloc/WeatherState.dart';
import 'package:flutterweatherapp/weather/data/network/WeatherNetworkDataSourceImpl.dart';
import 'package:flutterweatherapp/weather/data/network/weather_api_service.dart';
import 'package:flutterweatherapp/weather/data/repositories/WeatherRepositoryImpl.dart';
import 'package:flutterweatherapp/weather/domain/WeatherNetworkDataSource.dart';
import 'package:flutterweatherapp/weather/domain/WeatherRepository.dart';
import 'package:flutterweatherapp/weather/presentation/weather_container.dart';

class WeatherScreen extends StatelessWidget {
  static WeatherApiService apiService = WeatherApiService.create();
  static WeatherNetworkDataSource dataSource =
      WeatherNetworkDataSourceImpl(apiService);
  static LocationNetworkDataSource locationNetworkDataSource =
      LocationNetworkDataSourceImpl(apiService);
  static LocationRepository locationRepository =
      LocationRepositoryImpl(locationNetworkDataSource);
  final WeatherRepository repository =
      WeatherRepositoryImpl(dataSource, locationRepository);

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
    BlocProvider.of<WeatherBloc>(context).add(FetchWeather(city: 'london'));

    return Center(
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (cotext, state) {
          if (state is WeatherSuccess) {
            return WeatherContainer(
              weatherEntity: state.weather,
            );
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
