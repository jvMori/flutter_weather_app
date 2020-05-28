import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutterweatherapp/weather/data/network/response/WeatherConditionBuilt.dart';
import 'package:flutterweatherapp/weather/data/network/response/WeatherResponseBuilt.dart';
import 'package:built_collection/built_collection.dart';


part 'serializers.g.dart';

@SerializersFor(const [WeatherResponseBuilt, WeatherConditionBuilt])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();