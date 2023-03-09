import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<OpenDataRecipeRemoteRepository> openDataRecipeRemoteRepositoryProvider =
    Provider<OpenDataRecipeRemoteRepository>((_) => OpenDataRecipeRemoteRepository());

// ignore: one_member_abstracts
abstract class OpenDataRecipeRemoteRepositoryBase {
  Future<Uint8List> getPDF(String url);
}

class OpenDataRecipeRemoteRepository extends OpenDataRecipeRemoteRepositoryBase {
  @override
  Future<Uint8List> getPDF(String url) async {
    final HttpClientRequest request = await HttpClient().getUrl(Uri.parse(url));
    final HttpClientResponse response = await request.close();
    final Uint8List result = await consolidateHttpClientResponseBytes(response);

    return result;
  }
}
