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
      'weather_state_abbr',
      serializers.serialize(object.weather_state_abbr,
          specifiedType: const FullType(String)),
      'applicable_date',
      serializers.serialize(object.applicable_date,
          specifiedType: const FullType(String)),
      'the_temp',
      serializers.serialize(object.the_temp,
          specifiedType: const FullType(double)),
      'wind_speed',
      serializers.serialize(object.wind_speed,
          specifiedType: const FullType(double)),
      'air_pressure',
      serializers.serialize(object.air_pressure,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
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
        case 'weather_state_abbr':
          result.weather_state_abbr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'applicable_date':
          result.applicable_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'the_temp':
          result.the_temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_speed':
          result.wind_speed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'air_pressure':
          result.air_pressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
  @override
  final String weather_state_abbr;
  @override
  final String applicable_date;
  @override
  final double the_temp;
  @override
  final double wind_speed;
  @override
  final double air_pressure;
  @override
  final int humidity;

  factory _$WeatherConditionBuilt(
          [void Function(WeatherConditionBuiltBuilder) updates]) =>
      (new WeatherConditionBuiltBuilder()..update(updates)).build();

  _$WeatherConditionBuilt._(
      {this.id,
      this.weather_state_name,
      this.weather_state_abbr,
      this.applicable_date,
      this.the_temp,
      this.wind_speed,
      this.air_pressure,
      this.humidity})
      : super._() {
    if (weather_state_name == null) {
      throw new BuiltValueNullFieldError(
          'WeatherConditionBuilt', 'weather_state_name');
    }
    if (weather_state_abbr == null) {
      throw new BuiltValueNullFieldError(
          'WeatherConditionBuilt', 'weather_state_abbr');
    }
    if (applicable_date == null) {
      throw new BuiltValueNullFieldError(
          'WeatherConditionBuilt', 'applicable_date');
    }
    if (the_temp == null) {
      throw new BuiltValueNullFieldError('WeatherConditionBuilt', 'the_temp');
    }
    if (wind_speed == null) {
      throw new BuiltValueNullFieldError('WeatherConditionBuilt', 'wind_speed');
    }
    if (air_pressure == null) {
      throw new BuiltValueNullFieldError(
          'WeatherConditionBuilt', 'air_pressure');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('WeatherConditionBuilt', 'humidity');
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
        weather_state_name == other.weather_state_name &&
        weather_state_abbr == other.weather_state_abbr &&
        applicable_date == other.applicable_date &&
        the_temp == other.the_temp &&
        wind_speed == other.wind_speed &&
        air_pressure == other.air_pressure &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, id.hashCode),
                                weather_state_name.hashCode),
                            weather_state_abbr.hashCode),
                        applicable_date.hashCode),
                    the_temp.hashCode),
                wind_speed.hashCode),
            air_pressure.hashCode),
        humidity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherConditionBuilt')
          ..add('id', id)
          ..add('weather_state_name', weather_state_name)
          ..add('weather_state_abbr', weather_state_abbr)
          ..add('applicable_date', applicable_date)
          ..add('the_temp', the_temp)
          ..add('wind_speed', wind_speed)
          ..add('air_pressure', air_pressure)
          ..add('humidity', humidity))
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

  String _weather_state_abbr;
  String get weather_state_abbr => _$this._weather_state_abbr;
  set weather_state_abbr(String weather_state_abbr) =>
      _$this._weather_state_abbr = weather_state_abbr;

  String _applicable_date;
  String get applicable_date => _$this._applicable_date;
  set applicable_date(String applicable_date) =>
      _$this._applicable_date = applicable_date;

  double _the_temp;
  double get the_temp => _$this._the_temp;
  set the_temp(double the_temp) => _$this._the_temp = the_temp;

  double _wind_speed;
  double get wind_speed => _$this._wind_speed;
  set wind_speed(double wind_speed) => _$this._wind_speed = wind_speed;

  double _air_pressure;
  double get air_pressure => _$this._air_pressure;
  set air_pressure(double air_pressure) => _$this._air_pressure = air_pressure;

  int _humidity;
  int get humidity => _$this._humidity;
  set humidity(int humidity) => _$this._humidity = humidity;

  WeatherConditionBuiltBuilder();

  WeatherConditionBuiltBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _weather_state_name = _$v.weather_state_name;
      _weather_state_abbr = _$v.weather_state_abbr;
      _applicable_date = _$v.applicable_date;
      _the_temp = _$v.the_temp;
      _wind_speed = _$v.wind_speed;
      _air_pressure = _$v.air_pressure;
      _humidity = _$v.humidity;
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
            id: id,
            weather_state_name: weather_state_name,
            weather_state_abbr: weather_state_abbr,
            applicable_date: applicable_date,
            the_temp: the_temp,
            wind_speed: wind_speed,
            air_pressure: air_pressure,
            humidity: humidity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
