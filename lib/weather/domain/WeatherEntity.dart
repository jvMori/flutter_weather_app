import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final String cityName;
  final String description;
  //final String weatherState;
//  final double minTemp;
//  final double maxTemp;
//  final double temp;
//  final double airPressure;
//  final double humidity;
//  final double windSpeed;
//  final double windDirection;

  WeatherEntity(
    this.cityName,
    this.description,
    //this.weatherState,
//    this.minTemp,
//    this.maxTemp,
//    this.temp,
//    this.airPressure,
//    this.humidity,
//    this.windSpeed,
//    this.windDirection,
  );

  @override
  List<Object> get props => [cityName];
}
