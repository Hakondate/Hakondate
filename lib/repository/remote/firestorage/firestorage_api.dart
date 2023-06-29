import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestorage_api.g.dart';

@Riverpod(keepAlive: true)
class FirestorageAPI extends _$FirestorageAPI {
  @override
  FirebaseStorage build() => FirebaseStorage.instance;
}
