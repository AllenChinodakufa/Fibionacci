// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_pressure_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BloodPressureRecord> _$bloodPressureRecordSerializer =
    new _$BloodPressureRecordSerializer();

class _$BloodPressureRecordSerializer
    implements StructuredSerializer<BloodPressureRecord> {
  @override
  final Iterable<Type> types = const [
    BloodPressureRecord,
    _$BloodPressureRecord
  ];
  @override
  final String wireName = 'BloodPressureRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BloodPressureRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.diastolicPressure;
    if (value != null) {
      result
        ..add('diastolicPressure')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.systolicPressure;
    if (value != null) {
      result
        ..add('systolicPressure')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.userReference;
    if (value != null) {
      result
        ..add('userReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  BloodPressureRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BloodPressureRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'diastolicPressure':
          result.diastolicPressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'systolicPressure':
          result.systolicPressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'userReference':
          result.userReference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$BloodPressureRecord extends BloodPressureRecord {
  @override
  final double diastolicPressure;
  @override
  final double systolicPressure;
  @override
  final DocumentReference<Object> userReference;
  @override
  final DateTime dateCreated;
  @override
  final DocumentReference<Object> reference;

  factory _$BloodPressureRecord(
          [void Function(BloodPressureRecordBuilder) updates]) =>
      (new BloodPressureRecordBuilder()..update(updates)).build();

  _$BloodPressureRecord._(
      {this.diastolicPressure,
      this.systolicPressure,
      this.userReference,
      this.dateCreated,
      this.reference})
      : super._();

  @override
  BloodPressureRecord rebuild(
          void Function(BloodPressureRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BloodPressureRecordBuilder toBuilder() =>
      new BloodPressureRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BloodPressureRecord &&
        diastolicPressure == other.diastolicPressure &&
        systolicPressure == other.systolicPressure &&
        userReference == other.userReference &&
        dateCreated == other.dateCreated &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, diastolicPressure.hashCode),
                    systolicPressure.hashCode),
                userReference.hashCode),
            dateCreated.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BloodPressureRecord')
          ..add('diastolicPressure', diastolicPressure)
          ..add('systolicPressure', systolicPressure)
          ..add('userReference', userReference)
          ..add('dateCreated', dateCreated)
          ..add('reference', reference))
        .toString();
  }
}

class BloodPressureRecordBuilder
    implements Builder<BloodPressureRecord, BloodPressureRecordBuilder> {
  _$BloodPressureRecord _$v;

  double _diastolicPressure;
  double get diastolicPressure => _$this._diastolicPressure;
  set diastolicPressure(double diastolicPressure) =>
      _$this._diastolicPressure = diastolicPressure;

  double _systolicPressure;
  double get systolicPressure => _$this._systolicPressure;
  set systolicPressure(double systolicPressure) =>
      _$this._systolicPressure = systolicPressure;

  DocumentReference<Object> _userReference;
  DocumentReference<Object> get userReference => _$this._userReference;
  set userReference(DocumentReference<Object> userReference) =>
      _$this._userReference = userReference;

  DateTime _dateCreated;
  DateTime get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime dateCreated) => _$this._dateCreated = dateCreated;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BloodPressureRecordBuilder() {
    BloodPressureRecord._initializeBuilder(this);
  }

  BloodPressureRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _diastolicPressure = $v.diastolicPressure;
      _systolicPressure = $v.systolicPressure;
      _userReference = $v.userReference;
      _dateCreated = $v.dateCreated;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BloodPressureRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BloodPressureRecord;
  }

  @override
  void update(void Function(BloodPressureRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BloodPressureRecord build() {
    final _$result = _$v ??
        new _$BloodPressureRecord._(
            diastolicPressure: diastolicPressure,
            systolicPressure: systolicPressure,
            userReference: userReference,
            dateCreated: dateCreated,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
