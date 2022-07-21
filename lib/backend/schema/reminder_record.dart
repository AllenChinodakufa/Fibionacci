import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reminder_record.g.dart';

abstract class ReminderRecord
    implements Built<ReminderRecord, ReminderRecordBuilder> {
  static Serializer<ReminderRecord> get serializer =>
      _$reminderRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'user_reference')
  DocumentReference get userReference;

  @nullable
  @BuiltValueField(wireName: 'morning_time')
  String get morningTime;

  @nullable
  @BuiltValueField(wireName: 'afternoon_time')
  String get afternoonTime;

  @nullable
  @BuiltValueField(wireName: 'evening_time')
  String get eveningTime;

  @nullable
  @BuiltValueField(wireName: 'date_created')
  DateTime get dateCreated;

  @nullable
  @BuiltValueField(wireName: 'reminder_for_pills')
  DateTime get reminderForPills;

  @nullable
  @BuiltValueField(wireName: 'reminder_for_checkup')
  DateTime get reminderForCheckup;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReminderRecordBuilder builder) => builder
    ..morningTime = ''
    ..afternoonTime = ''
    ..eveningTime = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reminder');

  static Stream<ReminderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReminderRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReminderRecord._();
  factory ReminderRecord([void Function(ReminderRecordBuilder) updates]) =
      _$ReminderRecord;

  static ReminderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReminderRecordData({
  DocumentReference userReference,
  String morningTime,
  String afternoonTime,
  String eveningTime,
  DateTime dateCreated,
  DateTime reminderForPills,
  DateTime reminderForCheckup,
}) =>
    serializers.toFirestore(
        ReminderRecord.serializer,
        ReminderRecord((r) => r
          ..userReference = userReference
          ..morningTime = morningTime
          ..afternoonTime = afternoonTime
          ..eveningTime = eveningTime
          ..dateCreated = dateCreated
          ..reminderForPills = reminderForPills
          ..reminderForCheckup = reminderForCheckup));
