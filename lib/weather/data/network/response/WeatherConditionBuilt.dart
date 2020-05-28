
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'WeatherConditionBuilt.g.dart';

abstract class WeatherConditionBuilt implements Built<WeatherConditionBuilt, WeatherConditionBuiltBuilder>{
  @nullable
  int get id;

  String get weather_state_name;

  WeatherConditionBuilt._();

  factory WeatherConditionBuilt([updates(WeatherConditionBuiltBuilder b)]) = _$WeatherConditionBuilt;

  static Serializer<WeatherConditionBuilt> get serializer => _$weatherConditionBuiltSerializer;
}