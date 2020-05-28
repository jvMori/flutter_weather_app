import 'package:flutterweatherapp/weather/data/network/response/WeatherResponseBuilt.dart';
import 'package:flutterweatherapp/weather/domain/WeatherEntity.dart';
import 'package:flutterweatherapp/weather/domain/WeatherNetworkDataSource.dart';
import 'package:flutterweatherapp/weather/domain/WeatherRepository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherNetworkDataSource dataSource;

  WeatherRepositoryImpl(this.dataSource);

  @override
  Future<WeatherEntity> fetchWeather(String city) async {
    var data = await dataSource.getWeather(city);
    if (data.isSuccessful) {
      return _mapResponseToEntity(data.body);
    } else {
      throw Exception();
    }
  }

  WeatherEntity _mapResponseToEntity(WeatherResponseBuilt response) {
    return new WeatherEntity(
      response.title,
      response.consolidated_weather[0].weather_state_name,
    );
  }
}
