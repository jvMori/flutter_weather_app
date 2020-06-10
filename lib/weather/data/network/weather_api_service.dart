import 'package:chopper/chopper.dart';
import 'package:flutterweatherapp/common/built_value_converter.dart';
import 'package:flutterweatherapp/weather/data/network/response/WeatherResponseBuilt.dart';

part 'weather_api_service.chopper.dart';

@ChopperApi(baseUrl: "location/")
abstract class WeatherApiService extends ChopperService {
  @Get(path: '{city}')
  Future<Response<WeatherResponseBuilt>> getWeather(@Path('city') String city);
  
  @Get(path: 'search/')
  Future<Response> getCity({@Query() String query});

  static WeatherApiService create() {
    final client = ChopperClient(
      baseUrl: "https://www.metaweather.com/api/",
      services: [
        _$WeatherApiService(),
      ],
      converter: BuiltValueConverter(),
    );
    return _$WeatherApiService(client);
  }
}
