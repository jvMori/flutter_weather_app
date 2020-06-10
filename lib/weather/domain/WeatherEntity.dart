import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final String cityName;
  final String description;
  final String weatherState;
  final double temp;
  final double airPressure;
  final int humidity;
  final double windSpeed;
  final String date;

  WeatherEntity(
    this.cityName,
    this.description,
    this.weatherState,
    this.temp,
    this.airPressure,
    this.humidity,
    this.windSpeed,
    this.date,
  );

  @override
  List<Object> get props => [cityName];
}
