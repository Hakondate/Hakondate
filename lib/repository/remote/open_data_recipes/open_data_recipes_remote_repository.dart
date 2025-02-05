import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'open_data_recipes_remote_repository.g.dart';

@Riverpod(keepAlive: true)
OpenDataRecipesRemoteRepository openDataRecipesRemoteRepository(Ref ref) => OpenDataRecipesRemoteRepository();

// 説明
// ignore: one_member_abstracts
abstract class OpenDataRecipesRemoteRepositoryAPI {
  Future<Uint8List> getPDF(String url);
}

class OpenDataRecipesRemoteRepository extends OpenDataRecipesRemoteRepositoryAPI {
  @override
  Future<Uint8List> getPDF(String url) async {
    final HttpClientRequest request = await HttpClient().getUrl(Uri.parse(url));
    final HttpClientResponse response = await request.close();
    final Uint8List result = await consolidateHttpClientResponseBytes(response);

    return result;
  }
}
