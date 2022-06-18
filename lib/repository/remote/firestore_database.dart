import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firestoreDatabaseProvider = StateNotifierProvider<FirestoreDatabase, FirebaseFirestore>((_) {
  final FirebaseFirestore database = FirebaseFirestore.instance;
  return FirestoreDatabase(database);
});

class FirestoreDatabase extends StateNotifier<FirebaseFirestore> {
  FirestoreDatabase(FirebaseFirestore database) : super(database);
}
