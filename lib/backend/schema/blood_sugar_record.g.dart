// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_sugar_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BloodSugarRecord> _$bloodSugarRecordSerializer =
    new _$BloodSugarRecordSerializer();

class _$BloodSugarRecordSerializer
    implements StructuredSerializer<BloodSugarRecord> {
  @override
  final Iterable<Type> types = const [BloodSugarRecord, _$BloodSugarRecord];
  @override
  final String wireName = 'BloodSugarRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BloodSugarRecord object,
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
    value = object.mgDL;
    if (value != null) {
      result
        ..add('mg_dL')
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
  BloodSugarRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BloodSugarRecordBuilder();

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
        case 'mg_dL':
          result.mgDL = serializers.deserialize(value,
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

class _$BloodSugarRecord extends BloodSugarRecord {
  @override
  final DocumentReference<Object> userReference;
  @override
  final double mgDL;
  @override
  final DateTime dateCreated;
  @override
  final DocumentReference<Object> reference;

  factory _$BloodSugarRecord(
          [void Function(BloodSugarRecordBuilder) updates]) =>
      (new BloodSugarRecordBuilder()..update(updates)).build();

  _$BloodSugarRecord._(
      {this.userReference, this.mgDL, this.dateCreated, this.reference})
      : super._();

  @override
  BloodSugarRecord rebuild(void Function(BloodSugarRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BloodSugarRecordBuilder toBuilder() =>
      new BloodSugarRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BloodSugarRecord &&
        userReference == other.userReference &&
        mgDL == other.mgDL &&
        dateCreated == other.dateCreated &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userReference.hashCode), mgDL.hashCode),
            dateCreated.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BloodSugarRecord')
          ..add('userReference', userReference)
          ..add('mgDL', mgDL)
          ..add('dateCreated', dateCreated)
          ..add('reference', reference))
        .toString();
  }
}

class BloodSugarRecordBuilder
    implements Builder<BloodSugarRecord, BloodSugarRecordBuilder> {
  _$BloodSugarRecord _$v;

  DocumentReference<Object> _userReference;
  DocumentReference<Object> get userReference => _$this._userReference;
  set userReference(DocumentReference<Object> userReference) =>
      _$this._userReference = userReference;

  double _mgDL;
  double get mgDL => _$this._mgDL;
  set mgDL(double mgDL) => _$this._mgDL = mgDL;

  DateTime _dateCreated;
  DateTime get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime dateCreated) => _$this._dateCreated = dateCreated;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BloodSugarRecordBuilder() {
    BloodSugarRecord._initializeBuilder(this);
  }

  BloodSugarRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userReference = $v.userReference;
      _mgDL = $v.mgDL;
      _dateCreated = $v.dateCreated;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BloodSugarRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BloodSugarRecord;
  }

  @override
  void update(void Function(BloodSugarRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BloodSugarRecord build() {
    final _$result = _$v ??
        new _$BloodSugarRecord._(
            userReference: userReference,
            mgDL: mgDL,
            dateCreated: dateCreated,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
