import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:hakondate/repository/remote/firebase_functions/firebase_functions_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authorization_remote_repository.g.dart';

@Riverpod(keepAlive: true)
AuthorizationRemoteRepository authorizationRemoteRepository(AuthorizationRemoteRepositoryRef ref) {
  final FirebaseFunctions instance = ref.watch(firebaseFunctionsApiProvider);
  return AuthorizationRemoteRepository(instance);
}

class AuthorizationRemoteRepository {
  AuthorizationRemoteRepository(this.instance);

  final FirebaseFunctions instance;

  Future<bool> checkAuthorizationCode(int schoolId, String authorizationKey) async {
    try {
      final HttpsCallableResult<dynamic> response = await instance
          .httpsCallableFromUrl(
        'https://authorize-mdq5vdl66q-uc.a.run.app',
        options: HttpsCallableOptions(
          timeout: const Duration(seconds: 10),
        ),
      )
          .call(
        <String, Object>{
          'schoolId': schoolId,
          'authorizationKey': authorizationKey,
        },
      );

      debugPrint('respose1: $response');

      return true;
    } catch (error) {
      debugPrint('error: $error');
      return false;
    }
  }
}
