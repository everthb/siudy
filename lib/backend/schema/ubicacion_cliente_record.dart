import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UbicacionClienteRecord extends FirestoreRecord {
  UbicacionClienteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "motoBuscada" field.
  String? _motoBuscada;
  String get motoBuscada => _motoBuscada ?? '';
  bool hasMotoBuscada() => _motoBuscada != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userName = snapshotData['user_name'] as String?;
    _ubicacion = snapshotData['ubicacion'] as LatLng?;
    _motoBuscada = snapshotData['motoBuscada'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ubicacionCliente');

  static Stream<UbicacionClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UbicacionClienteRecord.fromSnapshot(s));

  static Future<UbicacionClienteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UbicacionClienteRecord.fromSnapshot(s));

  static UbicacionClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UbicacionClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UbicacionClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UbicacionClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UbicacionClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UbicacionClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUbicacionClienteRecordData({
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? userName,
  LatLng? ubicacion,
  String? motoBuscada,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'user_name': userName,
      'ubicacion': ubicacion,
      'motoBuscada': motoBuscada,
    }.withoutNulls,
  );

  return firestoreData;
}

class UbicacionClienteRecordDocumentEquality
    implements Equality<UbicacionClienteRecord> {
  const UbicacionClienteRecordDocumentEquality();

  @override
  bool equals(UbicacionClienteRecord? e1, UbicacionClienteRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.userName == e2?.userName &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.motoBuscada == e2?.motoBuscada;
  }

  @override
  int hash(UbicacionClienteRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.userName,
        e?.ubicacion,
        e?.motoBuscada
      ]);

  @override
  bool isValidKey(Object? o) => o is UbicacionClienteRecord;
}
