import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firestorageDatabaseProvider = StateNotifierProvider<FirestorageDatabase, FirebaseStorage>((_) {
  final FirebaseStorage storage = FirebaseStorage.instance;
  return FirestorageDatabase(storage);
});

class FirestorageDatabase extends StateNotifier<FirebaseStorage> {
  FirestorageDatabase(super.storage);
}
