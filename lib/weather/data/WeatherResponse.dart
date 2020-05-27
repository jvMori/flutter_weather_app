import 'package:equatable/equatable.dart';

class WeatherResponse extends Equatable {
  final int woeid;
  final String cityName;
  final String description;
  final String weatherState;
  final double minTemp;
  final double maxTemp;
  final double temp;
  final double airPressure;
  final double humidity;
  final double windSpeed;
  final double windDirection;

  WeatherResponse(
    this.woeid,
    this.cityName,
    this.description,
    this.weatherState,
    this.minTemp,
    this.maxTemp,
    this.temp,
    this.airPressure,
    this.humidity,
    this.windSpeed,
    this.windDirection,
  );

  @override
  List<Object> get props => [woeid];

  factory WeatherResponse.fromJson(Map<String, dynamic> data) {
    return new WeatherResponse(
      data['woeid'],
      data['title'],
      data['consolidated_weather'][0]['weather_state_name'],
      data['consolidated_weather'][0]['weather_state_abbr'],
      data['consolidated_weather'][0]['min_temp'],
      data['consolidated_weather'][0]['max_temp'],
      data['consolidated_weather'][0]['the_temp'],
      data['consolidated_weather'][0]['air_pressure'],
      data['consolidated_weather'][0]['humidity'],
      data['consolidated_weather'][0]['wind_speed'],
      data['consolidated_weather'][0]['wind_direction'],
    );
  }
}
