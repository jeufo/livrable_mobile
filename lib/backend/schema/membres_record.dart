import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembresRecord extends FirestoreRecord {
  MembresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "prenom" field.
  String? _prenom;
  String get prenom => _prenom ?? '';
  bool hasPrenom() => _prenom != null;

  // "telephone" field.
  String? _telephone;
  String get telephone => _telephone ?? '';
  bool hasTelephone() => _telephone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _prenom = snapshotData['prenom'] as String?;
    _telephone = snapshotData['telephone'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('membres');

  static Stream<MembresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembresRecord.fromSnapshot(s));

  static Future<MembresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembresRecord.fromSnapshot(s));

  static MembresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembresRecordData({
  String? nom,
  String? prenom,
  String? telephone,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'prenom': prenom,
      'telephone': telephone,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembresRecordDocumentEquality implements Equality<MembresRecord> {
  const MembresRecordDocumentEquality();

  @override
  bool equals(MembresRecord? e1, MembresRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.prenom == e2?.prenom &&
        e1?.telephone == e2?.telephone &&
        e1?.email == e2?.email;
  }

  @override
  int hash(MembresRecord? e) =>
      const ListEquality().hash([e?.nom, e?.prenom, e?.telephone, e?.email]);

  @override
  bool isValidKey(Object? o) => o is MembresRecord;
}
