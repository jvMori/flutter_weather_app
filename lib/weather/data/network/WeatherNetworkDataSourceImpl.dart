import 'package:chopper/chopper.dart';
import 'package:flutterweatherapp/weather/data/network/response/WeatherResponseBuilt.dart';
import 'package:flutterweatherapp/weather/data/network/weather_api_service.dart';
import 'package:flutterweatherapp/weather/domain/WeatherNetworkDataSource.dart';

class WeatherNetworkDataSourceImpl extends WeatherNetworkDataSource {
  final WeatherApiService apiService;

  WeatherNetworkDataSourceImpl(this.apiService);

  @override
  Future<Response<WeatherResponseBuilt>> getWeather(String city) {
    return apiService.getWeather(city);
  }
}
