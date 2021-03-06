import 'package:flutterweatherapp/location/domain/LocationRepository.dart';
import 'package:flutterweatherapp/weather/data/network/response/WeatherResponseBuilt.dart';
import 'package:flutterweatherapp/weather/domain/WeatherEntity.dart';
import 'package:flutterweatherapp/weather/domain/WeatherNetworkDataSource.dart';
import 'package:flutterweatherapp/weather/domain/WeatherRepository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherNetworkDataSource dataSource;
  final LocationRepository locationRepository;

  WeatherRepositoryImpl(this.dataSource, this.locationRepository);

  @override
  Future<WeatherEntity> fetchWeather(String city) async {
    try {
      var location = await locationRepository.getLocation(city);
      var data = await dataSource.getWeather(location[0].woeid.toString());
      return _mapResponseToEntity(data.body);
    } catch (err) {
      print(err.toString());
      throw err;
    }
  }

  WeatherEntity _mapResponseToEntity(WeatherResponseBuilt response) {
    return new WeatherEntity(
        response.title,
        response.consolidated_weather[0].weather_state_name,
        response.consolidated_weather[0].weather_state_abbr,
        response.consolidated_weather[0].the_temp,
        response.consolidated_weather[0].air_pressure,
        response.consolidated_weather[0].humidity,
        response.consolidated_weather[0].wind_speed,
        response.consolidated_weather[0].applicable_date);
  }
}
