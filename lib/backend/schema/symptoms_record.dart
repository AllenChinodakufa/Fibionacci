import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'symptoms_record.g.dart';

abstract class SymptomsRecord
    implements Built<SymptomsRecord, SymptomsRecordBuilder> {
  static Serializer<SymptomsRecord> get serializer =>
      _$symptomsRecordSerializer;

  @nullable
  DocumentReference get userReference;

  @nullable
  @BuiltValueField(wireName: 'consistent_symptoms')
  String get consistentSymptoms;

  @nullable
  DateTime get dateCreated;

  @nullable
  @BuiltValueField(wireName: 'health_check')
  String get healthCheck;

  @nullable
  String get conditionCheck;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SymptomsRecordBuilder builder) => builder
    ..consistentSymptoms = ''
    ..healthCheck = ''
    ..conditionCheck = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('symptoms');

  static Stream<SymptomsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SymptomsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SymptomsRecord._();
  factory SymptomsRecord([void Function(SymptomsRecordBuilder) updates]) =
      _$SymptomsRecord;

  static SymptomsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSymptomsRecordData({
  DocumentReference userReference,
  String consistentSymptoms,
  DateTime dateCreated,
  String healthCheck,
  String conditionCheck,
}) =>
    serializers.toFirestore(
        SymptomsRecord.serializer,
        SymptomsRecord((s) => s
          ..userReference = userReference
          ..consistentSymptoms = consistentSymptoms
          ..dateCreated = dateCreated
          ..healthCheck = healthCheck
          ..conditionCheck = conditionCheck));
