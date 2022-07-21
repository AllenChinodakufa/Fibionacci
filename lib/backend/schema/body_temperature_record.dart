import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'body_temperature_record.g.dart';

abstract class BodyTemperatureRecord
    implements Built<BodyTemperatureRecord, BodyTemperatureRecordBuilder> {
  static Serializer<BodyTemperatureRecord> get serializer =>
      _$bodyTemperatureRecordSerializer;

  @nullable
  DocumentReference get userReference;

  @nullable
  double get temperature;

  @nullable
  DateTime get dateCreated;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BodyTemperatureRecordBuilder builder) =>
      builder..temperature = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('body_temperature');

  static Stream<BodyTemperatureRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BodyTemperatureRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  BodyTemperatureRecord._();
  factory BodyTemperatureRecord(
          [void Function(BodyTemperatureRecordBuilder) updates]) =
      _$BodyTemperatureRecord;

  static BodyTemperatureRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBodyTemperatureRecordData({
  DocumentReference userReference,
  double temperature,
  DateTime dateCreated,
}) =>
    serializers.toFirestore(
        BodyTemperatureRecord.serializer,
        BodyTemperatureRecord((b) => b
          ..userReference = userReference
          ..temperature = temperature
          ..dateCreated = dateCreated));
