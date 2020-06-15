import 'package:flutterweatherapp/location/domain/LocationEntity.dart';
import 'package:built_collection/built_collection.dart';
import 'LocationResponse.dart';

extension DataMapper on BuiltList<LocationResponse> {
  List<LocationEntity> mapToEntity() {
    return this.map((e) => LocationEntity(e.title, e.woeid)).toList();
  }
}
