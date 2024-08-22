import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authorization_remote_repository.g.dart';

@Riverpod(keepAlive: true)
AuthorizationRemoteRepository authorizationRemoteRepository(AuthorizationRemoteRepositoryRef ref) {
  return AuthorizationRemoteRepository();
}

class AuthorizationRemoteRepository {
  AuthorizationRemoteRepository();

  Future<bool> checkAuthorizationCode(int schoolId, String authorizationKey) async {
    try {
      final Uri url = Uri.https('authorize-mdq5vdl66q-uc.a.run.app');
      final http.Response response = await http.post(
        url,
        body: <String, Object>{
          'schoolId': schoolId.toString(),
          'authorizationKey': authorizationKey,
        },
      );

      if (response.statusCode != 200 && response.statusCode != 404) {
        debugPrint('Response status: ${response.statusCode}');
        debugPrint('Response body: ${response.body}');

        return false;
      }

      return true;
    } catch (error) {
      debugPrint('error: $error');
      return false;
    }
  }
}
