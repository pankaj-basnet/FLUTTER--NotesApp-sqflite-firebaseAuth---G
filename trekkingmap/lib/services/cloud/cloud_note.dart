import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trekkingmap/services/cloud/cloud_storage_constants.dart';
import 'package:flutter/foundation.dart';

@immutable // pac --> foundation.dart
class CloudNote {
  final String documentId;
  final String ownerUserId;
  final String text;

  const CloudNote({
    required this.documentId,
    required this.ownerUserId,
    required this.text,
  });

  CloudNote.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
  : documentId = snapshot.id,
  ownerUserId = snapshot.data()[ownerUserIdFieldName],
  text = snapshot.data()[textFieldName] as String;
}
