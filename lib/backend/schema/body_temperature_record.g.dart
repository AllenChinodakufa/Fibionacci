// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_temperature_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BodyTemperatureRecord> _$bodyTemperatureRecordSerializer =
    new _$BodyTemperatureRecordSerializer();

class _$BodyTemperatureRecordSerializer
    implements StructuredSerializer<BodyTemperatureRecord> {
  @override
  final Iterable<Type> types = const [
    BodyTemperatureRecord,
    _$BodyTemperatureRecord
  ];
  @override
  final String wireName = 'BodyTemperatureRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BodyTemperatureRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userReference;
    if (value != null) {
      result
        ..add('userReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.temperature;
    if (value != null) {
      result
        ..add('temperature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('dateCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  BodyTemperatureRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BodyTemperatureRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'userReference':
          result.userReference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'temperature':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dateCreated':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$BodyTemperatureRecord extends BodyTemperatureRecord {
  @override
  final DocumentReference<Object> userReference;
  @override
  final double temperature;
  @override
  final DateTime dateCreated;
  @override
  final DocumentReference<Object> reference;

  factory _$BodyTemperatureRecord(
          [void Function(BodyTemperatureRecordBuilder) updates]) =>
      (new BodyTemperatureRecordBuilder()..update(updates)).build();

  _$BodyTemperatureRecord._(
      {this.userReference, this.temperature, this.dateCreated, this.reference})
      : super._();

  @override
  BodyTemperatureRecord rebuild(
          void Function(BodyTemperatureRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BodyTemperatureRecordBuilder toBuilder() =>
      new BodyTemperatureRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BodyTemperatureRecord &&
        userReference == other.userReference &&
        temperature == other.temperature &&
        dateCreated == other.dateCreated &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userReference.hashCode), temperature.hashCode),
            dateCreated.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BodyTemperatureRecord')
          ..add('userReference', userReference)
          ..add('temperature', temperature)
          ..add('dateCreated', dateCreated)
          ..add('reference', reference))
        .toString();
  }
}

class BodyTemperatureRecordBuilder
    implements Builder<BodyTemperatureRecord, BodyTemperatureRecordBuilder> {
  _$BodyTemperatureRecord _$v;

  DocumentReference<Object> _userReference;
  DocumentReference<Object> get userReference => _$this._userReference;
  set userReference(DocumentReference<Object> userReference) =>
      _$this._userReference = userReference;

  double _temperature;
  double get temperature => _$this._temperature;
  set temperature(double temperature) => _$this._temperature = temperature;

  DateTime _dateCreated;
  DateTime get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime dateCreated) => _$this._dateCreated = dateCreated;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BodyTemperatureRecordBuilder() {
    BodyTemperatureRecord._initializeBuilder(this);
  }

  BodyTemperatureRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userReference = $v.userReference;
      _temperature = $v.temperature;
      _dateCreated = $v.dateCreated;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BodyTemperatureRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BodyTemperatureRecord;
  }

  @override
  void update(void Function(BodyTemperatureRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BodyTemperatureRecord build() {
    final _$result = _$v ??
        new _$BodyTemperatureRecord._(
            userReference: userReference,
            temperature: temperature,
            dateCreated: dateCreated,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
