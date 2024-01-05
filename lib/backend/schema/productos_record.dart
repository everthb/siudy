import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "refcategoria" field.
  DocumentReference? _refcategoria;
  DocumentReference? get refcategoria => _refcategoria;
  bool hasRefcategoria() => _refcategoria != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "motor" field.
  String? _motor;
  String get motor => _motor ?? '';
  bool hasMotor() => _motor != null;

  // "cilindrada" field.
  String? _cilindrada;
  String get cilindrada => _cilindrada ?? '';
  bool hasCilindrada() => _cilindrada != null;

  // "velocidadMax" field.
  String? _velocidadMax;
  String get velocidadMax => _velocidadMax ?? '';
  bool hasVelocidadMax() => _velocidadMax != null;

  // "rendimiento" field.
  String? _rendimiento;
  String get rendimiento => _rendimiento ?? '';
  bool hasRendimiento() => _rendimiento != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "fotoGrande" field.
  String? _fotoGrande;
  String get fotoGrande => _fotoGrande ?? '';
  bool hasFotoGrande() => _fotoGrande != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _refcategoria = snapshotData['refcategoria'] as DocumentReference?;
    _foto = snapshotData['foto'] as String?;
    _modelo = snapshotData['modelo'] as String?;
    _motor = snapshotData['motor'] as String?;
    _cilindrada = snapshotData['cilindrada'] as String?;
    _velocidadMax = snapshotData['velocidadMax'] as String?;
    _rendimiento = snapshotData['rendimiento'] as String?;
    _color = snapshotData['color'] as String?;
    _marca = snapshotData['marca'] as String?;
    _fotoGrande = snapshotData['fotoGrande'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  DocumentReference? refcategoria,
  String? foto,
  String? modelo,
  String? motor,
  String? cilindrada,
  String? velocidadMax,
  String? rendimiento,
  String? color,
  String? marca,
  String? fotoGrande,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'refcategoria': refcategoria,
      'foto': foto,
      'modelo': modelo,
      'motor': motor,
      'cilindrada': cilindrada,
      'velocidadMax': velocidadMax,
      'rendimiento': rendimiento,
      'color': color,
      'marca': marca,
      'fotoGrande': fotoGrande,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.refcategoria == e2?.refcategoria &&
        e1?.foto == e2?.foto &&
        e1?.modelo == e2?.modelo &&
        e1?.motor == e2?.motor &&
        e1?.cilindrada == e2?.cilindrada &&
        e1?.velocidadMax == e2?.velocidadMax &&
        e1?.rendimiento == e2?.rendimiento &&
        e1?.color == e2?.color &&
        e1?.marca == e2?.marca &&
        e1?.fotoGrande == e2?.fotoGrande;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.refcategoria,
        e?.foto,
        e?.modelo,
        e?.motor,
        e?.cilindrada,
        e?.velocidadMax,
        e?.rendimiento,
        e?.color,
        e?.marca,
        e?.fotoGrande
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
