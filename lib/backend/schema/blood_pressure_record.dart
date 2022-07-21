import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blood_pressure_record.g.dart';

abstract class BloodPressureRecord
    implements Built<BloodPressureRecord, BloodPressureRecordBuilder> {
  static Serializer<BloodPressureRecord> get serializer =>
      _$bloodPressureRecordSerializer;

  @nullable
  double get diastolicPressure;

  @nullable
  double get systolicPressure;

  @nullable
  DocumentReference get userReference;

  @nullable
  DateTime get dateCreated;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BloodPressureRecordBuilder builder) => builder
    ..diastolicPressure = 0.0
    ..systolicPressure = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blood_pressure');

  static Stream<BloodPressureRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BloodPressureRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  BloodPressureRecord._();
  factory BloodPressureRecord(
          [void Function(BloodPressureRecordBuilder) updates]) =
      _$BloodPressureRecord;

  static BloodPressureRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBloodPressureRecordData({
  double diastolicPressure,
  double systolicPressure,
  DocumentReference userReference,
  DateTime dateCreated,
}) =>
    serializers.toFirestore(
        BloodPressureRecord.serializer,
        BloodPressureRecord((b) => b
          ..diastolicPressure = diastolicPressure
          ..systolicPressure = systolicPressure
          ..userReference = userReference
          ..dateCreated = dateCreated));
