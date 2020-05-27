import 'package:chopper/chopper.dart';

abstract class WeatherNetworkDataSource {
  Future<Response> getWeather(String city);
}
