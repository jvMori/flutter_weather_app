// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WeatherConditionBuilt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherConditionBuilt> _$weatherConditionBuiltSerializer =
    new _$WeatherConditionBuiltSerializer();

class _$WeatherConditionBuiltSerializer
    implements StructuredSerializer<WeatherConditionBuilt> {
  @override
  final Iterable<Type> types = const [
    WeatherConditionBuilt,
    _$WeatherConditionBuilt
  ];
  @override
  final String wireName = 'WeatherConditionBuilt';

  @override
  Iterable<Object> serialize(
      Serializers serializers, WeatherConditionBuilt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'weather_state_name',
      serializers.serialize(object.weather_state_name,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WeatherConditionBuilt deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherConditionBuiltBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weather_state_name':
          result.weather_state_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherConditionBuilt extends WeatherConditionBuilt {
  @override
  final int id;
  @override
  final String weather_state_name;

  factory _$WeatherConditionBuilt(
          [void Function(WeatherConditionBuiltBuilder) updates]) =>
      (new WeatherConditionBuiltBuilder()..update(updates)).build();

  _$WeatherConditionBuilt._({this.id, this.weather_state_name}) : super._() {
    if (weather_state_name == null) {
      throw new BuiltValueNullFieldError(
          'WeatherConditionBuilt', 'weather_state_name');
    }
  }

  @override
  WeatherConditionBuilt rebuild(
          void Function(WeatherConditionBuiltBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherConditionBuiltBuilder toBuilder() =>
      new WeatherConditionBuiltBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherConditionBuilt &&
        id == other.id &&
        weather_state_name == other.weather_state_name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), weather_state_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherConditionBuilt')
          ..add('id', id)
          ..add('weather_state_name', weather_state_name))
        .toString();
  }
}

class WeatherConditionBuiltBuilder
    implements Builder<WeatherConditionBuilt, WeatherConditionBuiltBuilder> {
  _$WeatherConditionBuilt _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _weather_state_name;
  String get weather_state_name => _$this._weather_state_name;
  set weather_state_name(String weather_state_name) =>
      _$this._weather_state_name = weather_state_name;

  WeatherConditionBuiltBuilder();

  WeatherConditionBuiltBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _weather_state_name = _$v.weather_state_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherConditionBuilt other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WeatherConditionBuilt;
  }

  @override
  void update(void Function(WeatherConditionBuiltBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherConditionBuilt build() {
    final _$result = _$v ??
        new _$WeatherConditionBuilt._(
            id: id, weather_state_name: weather_state_name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
