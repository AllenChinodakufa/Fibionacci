import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blood_sugar_record.g.dart';

abstract class BloodSugarRecord
    implements Built<BloodSugarRecord, BloodSugarRecordBuilder> {
  static Serializer<BloodSugarRecord> get serializer =>
      _$bloodSugarRecordSerializer;

  @nullable
  DocumentReference get userReference;

  @nullable
  @BuiltValueField(wireName: 'mg_dL')
  double get mgDL;

  @nullable
  DateTime get dateCreated;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BloodSugarRecordBuilder builder) =>
      builder..mgDL = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blood_sugar');

  static Stream<BloodSugarRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BloodSugarRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BloodSugarRecord._();
  factory BloodSugarRecord([void Function(BloodSugarRecordBuilder) updates]) =
      _$BloodSugarRecord;

  static BloodSugarRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBloodSugarRecordData({
  DocumentReference userReference,
  double mgDL,
  DateTime dateCreated,
}) =>
    serializers.toFirestore(
        BloodSugarRecord.serializer,
        BloodSugarRecord((b) => b
          ..userReference = userReference
          ..mgDL = mgDL
          ..dateCreated = dateCreated));
