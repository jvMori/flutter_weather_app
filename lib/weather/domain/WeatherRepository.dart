import 'package:flutterweatherapp/weather/domain/WeatherEntity.dart';

abstract class WeatherRepository {
  Future<WeatherEntity> fetchWeather(String city);
}
