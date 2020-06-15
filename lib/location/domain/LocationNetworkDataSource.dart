import 'package:chopper/chopper.dart';
import 'package:flutterweatherapp/location/data/LocationResponse.dart';
import 'package:built_collection/built_collection.dart';

abstract class LocationNetworkDataSource{
  Future<Response<BuiltList<LocationResponse>>> getLocation(String query);
}