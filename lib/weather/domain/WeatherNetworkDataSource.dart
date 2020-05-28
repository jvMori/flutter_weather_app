import 'package:chopper/chopper.dart';
import 'package:flutterweatherapp/weather/data/network/response/WeatherResponseBuilt.dart';

abstract class WeatherNetworkDataSource {
  Future<Response<WeatherResponseBuilt>> getWeather(String city);
}
