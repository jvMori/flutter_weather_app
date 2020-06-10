
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'WeatherConditionBuilt.g.dart';

abstract class WeatherConditionBuilt implements Built<WeatherConditionBuilt, WeatherConditionBuiltBuilder>{
  @nullable
  int get id;

  String get weather_state_name;
  String get weather_state_abbr;
  String get applicable_date;
  double get the_temp;
  double get wind_speed;
  double get air_pressure;
  int get humidity;

  WeatherConditionBuilt._();

  factory WeatherConditionBuilt([updates(WeatherConditionBuiltBuilder b)]) = _$WeatherConditionBuilt;

  static Serializer<WeatherConditionBuilt> get serializer => _$weatherConditionBuiltSerializer;
}