import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'LocationResponse.g.dart';

abstract class LocationResponse implements Built<LocationResponse, LocationResponseBuilder>{
  @nullable
  int get id;

  String get title;
  int get woeid;

  LocationResponse._();

  factory LocationResponse([updates(LocationResponseBuilder b)]) = _$LocationResponse;
  static Serializer<LocationResponse> get serializer => _$locationResponseSerializer;
}