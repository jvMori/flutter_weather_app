// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$WeatherApiService extends WeatherApiService {
  _$WeatherApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = WeatherApiService;

  Future<Response<WeatherResponseBuilt>> getWeather(String id) {
    final $url = 'location/{id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WeatherResponseBuilt, WeatherResponseBuilt>($request);
  }

  Future<Response> getCity({String query}) {
    final $url = 'location/search/';
    final Map<String, dynamic> $params = {'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
