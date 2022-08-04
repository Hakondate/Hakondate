import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final openDataRecipeRemoteRepositoryProvider = Provider<OpenDataRecipeRemoteRepository>((_) => OpenDataRecipeRemoteRepository());

abstract class OpenDataRecipeRemoteRepositoryBase {
  Future<Uint8List> getPDF(String url);
}

class OpenDataRecipeRemoteRepository extends OpenDataRecipeRemoteRepositoryBase {
  @override
  Future<Uint8List> getPDF(String url) async {
    HttpClientRequest request = await HttpClient().getUrl(Uri.parse(url));
    HttpClientResponse response = await request.close();
    return await consolidateHttpClientResponseBytes(response);
  }
}
