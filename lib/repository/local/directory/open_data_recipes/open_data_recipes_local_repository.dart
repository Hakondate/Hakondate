import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'open_data_recipes_local_repository.g.dart';

@Riverpod(keepAlive: true)
OpenDataRecipesLocalRepository openDataRecipesLocalRepository(Ref ref) => OpenDataRecipesLocalRepository();

abstract class OpenDataRecipesLocalRepositoryAPI {
  Future<String> add({required String path, required Uint8List bytes});
  Future<bool> isExist({required String path});
  Future<String> getPath({required String path});
  Future<void> delete({required String path});
  Future<void> deleteAll();
}

class OpenDataRecipesLocalRepository extends OpenDataRecipesLocalRepositoryAPI {
  OpenDataRecipesLocalRepository();

  @override
  Future<String> add({required String path, required Uint8List bytes}) async {
    final File file = File(await getPath(path: path));
    await file.create(recursive: true);
    final File writtenFile = await file.writeAsBytes(bytes, flush: true);

    return writtenFile.path;
  }

  @override
  Future<bool> isExist({required String path}) async {
    final String fullPath = await getPath(path: path);
    final File file = File(fullPath);

    return file.existsSync();
  }

  @override
  Future<String> getPath({required String path}) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    return directory.path + path;
  }

  @override
  Future<void> delete({required String path}) async {
    final String fullPath = await getPath(path: path);
    final File file = File(fullPath);
    await file.delete();
  }

  @override
  Future<void> deleteAll() async {
    final Directory routeDirectory = await getApplicationDocumentsDirectory();
    final Directory directory = Directory('${routeDirectory.path}/open_data_recipes/pdfs');

    if (directory.existsSync()) {
      final List<FileSystemEntity> recipeFiles = directory.listSync();

      await Future.forEach(recipeFiles, (FileSystemEntity recipeFile) async {
        await recipeFile.delete();
      });
    }
  }
}
