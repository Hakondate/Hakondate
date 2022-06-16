import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final openDataRecipeLocalRepositoryProvider = Provider<OpenDataRecipeLocalRepository>((ref) =>OpenDataRecipeLocalRepository());

abstract class OpenDataRecipeLocalRepositoryBase {
  Future<String> add({required String path, required Uint8List bytes});
  Future<bool> isExist({required path});
  Future<String> getPath({required String path});
}

class OpenDataRecipeLocalRepository extends OpenDataRecipeLocalRepositoryBase {
  OpenDataRecipeLocalRepository();

  @override
  Future<String> add({required String path, required Uint8List bytes}) async {
    final File file = File(await getPath(path: path));
    await file.create(recursive: true);
    final File writtenFile = await file.writeAsBytes(bytes, flush: true);

    return writtenFile.path;
  }

  @override
  Future<bool> isExist({required path}) async {
    final String fullPath = await getPath(path: path);
    final File file = File(fullPath);

    return await file.exists();
  }

  @override
  Future<String> getPath({required String path}) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    return directory.path + path;
  }
}
