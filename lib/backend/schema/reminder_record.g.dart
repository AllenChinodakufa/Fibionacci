// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReminderRecord> _$reminderRecordSerializer =
    new _$ReminderRecordSerializer();

class _$ReminderRecordSerializer
    implements StructuredSerializer<ReminderRecord> {
  @override
  final Iterable<Type> types = const [ReminderRecord, _$ReminderRecord];
  @override
  final String wireName = 'ReminderRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ReminderRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userReference;
    if (value != null) {
      result
        ..add('user_reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.morningTime;
    if (value != null) {
      result
        ..add('morning_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.afternoonTime;
    if (value != null) {
      result
        ..add('afternoon_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eveningTime;
    if (value != null) {
      result
        ..add('evening_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('date_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reminderForPills;
    if (value != null) {
      result
        ..add('reminder_for_pills')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reminderForCheckup;
    if (value != null) {
      result
        ..add('reminder_for_checkup')
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
  ReminderRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReminderRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user_reference':
          result.userReference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'morning_time':
          result.morningTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'afternoon_time':
          result.afternoonTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'evening_time':
          result.eveningTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_created':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'reminder_for_pills':
          result.reminderForPills = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'reminder_for_checkup':
          result.reminderForCheckup = serializers.deserialize(value,
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

class _$ReminderRecord extends ReminderRecord {
  @override
  final DocumentReference<Object> userReference;
  @override
  final String morningTime;
  @override
  final String afternoonTime;
  @override
  final String eveningTime;
  @override
  final DateTime dateCreated;
  @override
  final DateTime reminderForPills;
  @override
  final DateTime reminderForCheckup;
  @override
  final DocumentReference<Object> reference;

  factory _$ReminderRecord([void Function(ReminderRecordBuilder) updates]) =>
      (new ReminderRecordBuilder()..update(updates)).build();

  _$ReminderRecord._(
      {this.userReference,
      this.morningTime,
      this.afternoonTime,
      this.eveningTime,
      this.dateCreated,
      this.reminderForPills,
      this.reminderForCheckup,
      this.reference})
      : super._();

  @override
  ReminderRecord rebuild(void Function(ReminderRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReminderRecordBuilder toBuilder() =>
      new ReminderRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReminderRecord &&
        userReference == other.userReference &&
        morningTime == other.morningTime &&
        afternoonTime == other.afternoonTime &&
        eveningTime == other.eveningTime &&
        dateCreated == other.dateCreated &&
        reminderForPills == other.reminderForPills &&
        reminderForCheckup == other.reminderForCheckup &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, userReference.hashCode),
                                morningTime.hashCode),
                            afternoonTime.hashCode),
                        eveningTime.hashCode),
                    dateCreated.hashCode),
                reminderForPills.hashCode),
            reminderForCheckup.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReminderRecord')
          ..add('userReference', userReference)
          ..add('morningTime', morningTime)
          ..add('afternoonTime', afternoonTime)
          ..add('eveningTime', eveningTime)
          ..add('dateCreated', dateCreated)
          ..add('reminderForPills', reminderForPills)
          ..add('reminderForCheckup', reminderForCheckup)
          ..add('reference', reference))
        .toString();
  }
}

class ReminderRecordBuilder
    implements Builder<ReminderRecord, ReminderRecordBuilder> {
  _$ReminderRecord _$v;

  DocumentReference<Object> _userReference;
  DocumentReference<Object> get userReference => _$this._userReference;
  set userReference(DocumentReference<Object> userReference) =>
      _$this._userReference = userReference;

  String _morningTime;
  String get morningTime => _$this._morningTime;
  set morningTime(String morningTime) => _$this._morningTime = morningTime;

  String _afternoonTime;
  String get afternoonTime => _$this._afternoonTime;
  set afternoonTime(String afternoonTime) =>
      _$this._afternoonTime = afternoonTime;

  String _eveningTime;
  String get eveningTime => _$this._eveningTime;
  set eveningTime(String eveningTime) => _$this._eveningTime = eveningTime;

  DateTime _dateCreated;
  DateTime get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime dateCreated) => _$this._dateCreated = dateCreated;

  DateTime _reminderForPills;
  DateTime get reminderForPills => _$this._reminderForPills;
  set reminderForPills(DateTime reminderForPills) =>
      _$this._reminderForPills = reminderForPills;

  DateTime _reminderForCheckup;
  DateTime get reminderForCheckup => _$this._reminderForCheckup;
  set reminderForCheckup(DateTime reminderForCheckup) =>
      _$this._reminderForCheckup = reminderForCheckup;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ReminderRecordBuilder() {
    ReminderRecord._initializeBuilder(this);
  }

  ReminderRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userReference = $v.userReference;
      _morningTime = $v.morningTime;
      _afternoonTime = $v.afternoonTime;
      _eveningTime = $v.eveningTime;
      _dateCreated = $v.dateCreated;
      _reminderForPills = $v.reminderForPills;
      _reminderForCheckup = $v.reminderForCheckup;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReminderRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReminderRecord;
  }

  @override
  void update(void Function(ReminderRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReminderRecord build() {
    final _$result = _$v ??
        new _$ReminderRecord._(
            userReference: userReference,
            morningTime: morningTime,
            afternoonTime: afternoonTime,
            eveningTime: eveningTime,
            dateCreated: dateCreated,
            reminderForPills: reminderForPills,
            reminderForCheckup: reminderForCheckup,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
