import 'package:chopper/chopper.dart';

part 'weather_api_service.chopper.dart';

@ChopperApi(baseUrl: "location/")
abstract class WeatherApiService extends ChopperService {
  @Get(path: '{id}/')
  Future<Response> getWeather(String id);
  
  @Get(path: 'search/')
  Future<Response> getCity({@Query() String query});

  static WeatherApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://www.metaweather.com/api/',
      services: [
        _$WeatherApiService(),
      ],
      converter: JsonConverter(),
    );
    return _$WeatherApiService(client);
  }
}
