import 'package:cloud_functions/cloud_functions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_functions_api.g.dart';

@Riverpod(keepAlive: true)
class FirebaseFunctionsApi extends _$FirebaseFunctionsApi {
  @override
  FirebaseFunctions build() => FirebaseFunctions.instance;
}
