import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VentaDatosRecord extends FirestoreRecord {
  VentaDatosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "fechaCompra" field.
  DateTime? _fechaCompra;
  DateTime? get fechaCompra => _fechaCompra;
  bool hasFechaCompra() => _fechaCompra != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _producto = snapshotData['producto'] as DocumentReference?;
    _fechaCompra = snapshotData['fechaCompra'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ventaDatos');

  static Stream<VentaDatosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VentaDatosRecord.fromSnapshot(s));

  static Future<VentaDatosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VentaDatosRecord.fromSnapshot(s));

  static VentaDatosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VentaDatosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VentaDatosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VentaDatosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VentaDatosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VentaDatosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVentaDatosRecordData({
  DocumentReference? usuario,
  DocumentReference? producto,
  DateTime? fechaCompra,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'producto': producto,
      'fechaCompra': fechaCompra,
    }.withoutNulls,
  );

  return firestoreData;
}

class VentaDatosRecordDocumentEquality implements Equality<VentaDatosRecord> {
  const VentaDatosRecordDocumentEquality();

  @override
  bool equals(VentaDatosRecord? e1, VentaDatosRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.producto == e2?.producto &&
        e1?.fechaCompra == e2?.fechaCompra;
  }

  @override
  int hash(VentaDatosRecord? e) =>
      const ListEquality().hash([e?.usuario, e?.producto, e?.fechaCompra]);

  @override
  bool isValidKey(Object? o) => o is VentaDatosRecord;
}
