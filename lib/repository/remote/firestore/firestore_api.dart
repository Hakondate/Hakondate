import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_api.g.dart';

@Riverpod(keepAlive: true)
class FirestoreAPI extends _$FirestoreAPI {
  @override
  FirebaseFirestore build() => FirebaseFirestore.instance;
}
