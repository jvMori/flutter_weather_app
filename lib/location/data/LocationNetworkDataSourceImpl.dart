import 'package:chopper/src/response.dart';
import 'package:flutterweatherapp/location/data/LocationResponse.dart';
import 'package:flutterweatherapp/location/domain/LocationNetworkDataSource.dart';
import 'package:flutterweatherapp/weather/data/network/weather_api_service.dart';
import 'package:built_collection/built_collection.dart';

class LocationNetworkDataSourceImpl implements LocationNetworkDataSource {
  final WeatherApiService api;

  LocationNetworkDataSourceImpl(this.api);

  @override
  Future<Response<BuiltList<LocationResponse>>> getLocation(String query) {
    return api.getCity(query: query);
  }
}