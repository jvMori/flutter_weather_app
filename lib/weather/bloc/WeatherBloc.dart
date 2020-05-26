import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterweatherapp/weather/bloc/WeatherEvent.dart';
import 'package:flutterweatherapp/weather/bloc/WeatherState.dart';
import 'package:flutterweatherapp/weather/domain/WeatherEntity.dart';
import 'package:flutterweatherapp/weather/domain/WeatherRepository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;

  WeatherBloc({@required this.repository}) : assert(repository != null);

  @override
  WeatherState get initialState => WeatherEmpty();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is FetchWeather) {
      yield WeatherLoading();
      try {
        final WeatherEntity weather = await repository.fetchWeather(event.city);
        yield WeatherSuccess(weather: weather);
      } catch (_) {
        yield WeatherError();
      }
    }
  }
}
