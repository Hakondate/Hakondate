import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authorization_remote_repository.g.dart';

@Riverpod(keepAlive: true)
AuthorizationRemoteRepository authorizationRemoteRepository(AuthorizationRemoteRepositoryRef ref) {
  return AuthorizationRemoteRepository();
}

class AuthorizationRemoteRepository {
  AuthorizationRemoteRepository();

  Future<AuthorizationResult> checkAuthorizationCode(int schoolId, String authorizationKey) async {
    try {
      final Uri url = Uri.https('authorize-mdq5vdl66q-uc.a.run.app');
      final http.Response response = await http.post(
        url,
        body: <String, Object>{
          'schoolId': schoolId.toString(),
          'authorizationKey': authorizationKey,
        },
      );

      final AuthorizationResult result = await compute(parseAuthorizationResult, response.body);

      return result;
    } catch (error) {
      debugPrint('error: $error');

      return const AuthorizationResult(
        authorizationSucceeded: false,
        message: '正常に処理できませんでした',
      );
    }
  }
}

AuthorizationResult parseAuthorizationResult(String responseBody) {
  final Map<String, dynamic> json = jsonDecode(responseBody) as Map<String, dynamic>;

  return AuthorizationResult.fromJson(json);
}

class AuthorizationResult {
  const AuthorizationResult({
    required this.authorizationSucceeded,
    required this.message,
  });

  factory AuthorizationResult.fromJson(Map<String, dynamic> json) {
    return AuthorizationResult(
      authorizationSucceeded: json['authorizationSucceeded'] as bool,
      message: json['message'] as String,
    );
  }

  final bool authorizationSucceeded;
  final String message;
}
