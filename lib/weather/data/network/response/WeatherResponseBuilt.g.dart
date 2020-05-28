// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WeatherResponseBuilt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherResponseBuilt> _$weatherResponseBuiltSerializer =
    new _$WeatherResponseBuiltSerializer();

class _$WeatherResponseBuiltSerializer
    implements StructuredSerializer<WeatherResponseBuilt> {
  @override
  final Iterable<Type> types = const [
    WeatherResponseBuilt,
    _$WeatherResponseBuilt
  ];
  @override
  final String wireName = 'WeatherResponseBuilt';

  @override
  Iterable<Object> serialize(
      Serializers serializers, WeatherResponseBuilt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'consolidated_weather',
      serializers.serialize(object.consolidated_weather,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WeatherConditionBuilt)])),
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
  WeatherResponseBuilt deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherResponseBuiltBuilder();

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
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'consolidated_weather':
          result.consolidated_weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherConditionBuilt)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherResponseBuilt extends WeatherResponseBuilt {
  @override
  final int id;
  @override
  final int woeid;
  @override
  final String title;
  @override
  final BuiltList<WeatherConditionBuilt> consolidated_weather;

  factory _$WeatherResponseBuilt(
          [void Function(WeatherResponseBuiltBuilder) updates]) =>
      (new WeatherResponseBuiltBuilder()..update(updates)).build();

  _$WeatherResponseBuilt._(
      {this.id, this.woeid, this.title, this.consolidated_weather})
      : super._() {
    if (woeid == null) {
      throw new BuiltValueNullFieldError('WeatherResponseBuilt', 'woeid');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('WeatherResponseBuilt', 'title');
    }
    if (consolidated_weather == null) {
      throw new BuiltValueNullFieldError(
          'WeatherResponseBuilt', 'consolidated_weather');
    }
  }

  @override
  WeatherResponseBuilt rebuild(
          void Function(WeatherResponseBuiltBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherResponseBuiltBuilder toBuilder() =>
      new WeatherResponseBuiltBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherResponseBuilt &&
        id == other.id &&
        woeid == other.woeid &&
        title == other.title &&
        consolidated_weather == other.consolidated_weather;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), woeid.hashCode), title.hashCode),
        consolidated_weather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherResponseBuilt')
          ..add('id', id)
          ..add('woeid', woeid)
          ..add('title', title)
          ..add('consolidated_weather', consolidated_weather))
        .toString();
  }
}

class WeatherResponseBuiltBuilder
    implements Builder<WeatherResponseBuilt, WeatherResponseBuiltBuilder> {
  _$WeatherResponseBuilt _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _woeid;
  int get woeid => _$this._woeid;
  set woeid(int woeid) => _$this._woeid = woeid;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<WeatherConditionBuilt> _consolidated_weather;
  ListBuilder<WeatherConditionBuilt> get consolidated_weather =>
      _$this._consolidated_weather ??= new ListBuilder<WeatherConditionBuilt>();
  set consolidated_weather(
          ListBuilder<WeatherConditionBuilt> consolidated_weather) =>
      _$this._consolidated_weather = consolidated_weather;

  WeatherResponseBuiltBuilder();

  WeatherResponseBuiltBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _woeid = _$v.woeid;
      _title = _$v.title;
      _consolidated_weather = _$v.consolidated_weather?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherResponseBuilt other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WeatherResponseBuilt;
  }

  @override
  void update(void Function(WeatherResponseBuiltBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherResponseBuilt build() {
    _$WeatherResponseBuilt _$result;
    try {
      _$result = _$v ??
          new _$WeatherResponseBuilt._(
              id: id,
              woeid: woeid,
              title: title,
              consolidated_weather: consolidated_weather.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'consolidated_weather';
        consolidated_weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WeatherResponseBuilt', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
