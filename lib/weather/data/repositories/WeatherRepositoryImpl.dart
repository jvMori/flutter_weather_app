import 'dart:convert';

import 'package:flutterweatherapp/weather/data/WeatherResponse.dart';
import 'package:flutterweatherapp/weather/domain/WeatherEntity.dart';
import 'package:flutterweatherapp/weather/domain/WeatherNetworkDataSource.dart';
import 'package:flutterweatherapp/weather/domain/WeatherRepository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherNetworkDataSource dataSource;

  WeatherRepositoryImpl(this.dataSource);

  @override
  Future<WeatherEntity> fetchWeather(String city) async {
    //TODO: fetch location first then try to fetch weather for city

    var jsonBody = await dataSource.getWeather(city);
    if (jsonBody.isSuccessful) {
      var response = WeatherResponse.fromJson(json.decode(jsonBody.body));
      return _mapResponseToEntity(response);
    } else {
      throw Exception();
    }
  }

  WeatherEntity _mapResponseToEntity(WeatherResponse response) {
    return WeatherEntity(
      response.cityName,
      response.description,
      response.weatherState,
      response.minTemp,
      response.maxTemp,
      response.temp,
      response.airPressure,
      response.humidity,
      response.windDirection,
      response.windDirection,
    );
  }
}
