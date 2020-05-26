import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterweatherapp/weather/domain/WeatherEntity.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherEmpty extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final WeatherEntity weather;

  const WeatherSuccess({@required this.weather}) : assert(weather != null);

  @override
  List<Object> get props => [weather];
}

class WeatherError extends WeatherState {}
