// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptoms_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SymptomsRecord> _$symptomsRecordSerializer =
    new _$SymptomsRecordSerializer();

class _$SymptomsRecordSerializer
    implements StructuredSerializer<SymptomsRecord> {
  @override
  final Iterable<Type> types = const [SymptomsRecord, _$SymptomsRecord];
  @override
  final String wireName = 'SymptomsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SymptomsRecord object,
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
    value = object.consistentSymptoms;
    if (value != null) {
      result
        ..add('consistent_symptoms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('dateCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.healthCheck;
    if (value != null) {
      result
        ..add('health_check')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.conditionCheck;
    if (value != null) {
      result
        ..add('conditionCheck')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SymptomsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SymptomsRecordBuilder();

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
        case 'consistent_symptoms':
          result.consistentSymptoms = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateCreated':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'health_check':
          result.healthCheck = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'conditionCheck':
          result.conditionCheck = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$SymptomsRecord extends SymptomsRecord {
  @override
  final DocumentReference<Object> userReference;
  @override
  final String consistentSymptoms;
  @override
  final DateTime dateCreated;
  @override
  final String healthCheck;
  @override
  final String conditionCheck;
  @override
  final DocumentReference<Object> reference;

  factory _$SymptomsRecord([void Function(SymptomsRecordBuilder) updates]) =>
      (new SymptomsRecordBuilder()..update(updates)).build();

  _$SymptomsRecord._(
      {this.userReference,
      this.consistentSymptoms,
      this.dateCreated,
      this.healthCheck,
      this.conditionCheck,
      this.reference})
      : super._();

  @override
  SymptomsRecord rebuild(void Function(SymptomsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SymptomsRecordBuilder toBuilder() =>
      new SymptomsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SymptomsRecord &&
        userReference == other.userReference &&
        consistentSymptoms == other.consistentSymptoms &&
        dateCreated == other.dateCreated &&
        healthCheck == other.healthCheck &&
        conditionCheck == other.conditionCheck &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, userReference.hashCode),
                        consistentSymptoms.hashCode),
                    dateCreated.hashCode),
                healthCheck.hashCode),
            conditionCheck.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SymptomsRecord')
          ..add('userReference', userReference)
          ..add('consistentSymptoms', consistentSymptoms)
          ..add('dateCreated', dateCreated)
          ..add('healthCheck', healthCheck)
          ..add('conditionCheck', conditionCheck)
          ..add('reference', reference))
        .toString();
  }
}

class SymptomsRecordBuilder
    implements Builder<SymptomsRecord, SymptomsRecordBuilder> {
  _$SymptomsRecord _$v;

  DocumentReference<Object> _userReference;
  DocumentReference<Object> get userReference => _$this._userReference;
  set userReference(DocumentReference<Object> userReference) =>
      _$this._userReference = userReference;

  String _consistentSymptoms;
  String get consistentSymptoms => _$this._consistentSymptoms;
  set consistentSymptoms(String consistentSymptoms) =>
      _$this._consistentSymptoms = consistentSymptoms;

  DateTime _dateCreated;
  DateTime get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime dateCreated) => _$this._dateCreated = dateCreated;

  String _healthCheck;
  String get healthCheck => _$this._healthCheck;
  set healthCheck(String healthCheck) => _$this._healthCheck = healthCheck;

  String _conditionCheck;
  String get conditionCheck => _$this._conditionCheck;
  set conditionCheck(String conditionCheck) =>
      _$this._conditionCheck = conditionCheck;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SymptomsRecordBuilder() {
    SymptomsRecord._initializeBuilder(this);
  }

  SymptomsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userReference = $v.userReference;
      _consistentSymptoms = $v.consistentSymptoms;
      _dateCreated = $v.dateCreated;
      _healthCheck = $v.healthCheck;
      _conditionCheck = $v.conditionCheck;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SymptomsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SymptomsRecord;
  }

  @override
  void update(void Function(SymptomsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SymptomsRecord build() {
    final _$result = _$v ??
        new _$SymptomsRecord._(
            userReference: userReference,
            consistentSymptoms: consistentSymptoms,
            dateCreated: dateCreated,
            healthCheck: healthCheck,
            conditionCheck: conditionCheck,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
