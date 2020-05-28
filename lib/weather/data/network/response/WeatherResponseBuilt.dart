
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutterweatherapp/weather/data/network/response/WeatherConditionBuilt.dart';

part 'WeatherResponseBuilt.g.dart';

abstract class WeatherResponseBuilt implements Built<WeatherResponseBuilt, WeatherResponseBuiltBuilder>{
  @nullable
  int get id;

  int get woeid;
  String get title;
  BuiltList<WeatherConditionBuilt> get consolidated_weather;

  WeatherResponseBuilt._();

  factory WeatherResponseBuilt([updates(WeatherResponseBuiltBuilder b)]) = _$WeatherResponseBuilt;
  static Serializer<WeatherResponseBuilt> get serializer => _$weatherResponseBuiltSerializer;
}
