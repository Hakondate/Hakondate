import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/repository/local/directory/local_directory.dart';
import 'package:hakondate/util/exception/local_directory_exception.dart';

final openDataRecipeRepositoryProvider = Provider<OpenDataRecipeRepository>((ref) {
  final AsyncValue<LocalDirectory> localDirectory = ref.read(localDirectoryProvider);
  return OpenDataRecipeRepository(localDirectory);
});

abstract class OpenDataRecipeRepositoryBase {
  Future<String?> add({required String path, required Uint8List bytes});
}

class OpenDataRecipeRepository extends OpenDataRecipeRepositoryBase {
  OpenDataRecipeRepository(this._localDirectory);

  final AsyncValue<LocalDirectory> _localDirectory;

  @override
  Future<String?> add({required String path, required Uint8List bytes}) async {
    return _localDirectory.when(
      data: (LocalDirectory directory) async {
        final File file = File(directory.path + path);
        if (!await file.exists()) await file.writeAsBytes(bytes);

        return file.path;
      },
      error: (Object error, StackTrace? stack) =>
          throw const LocalDirectoryException('Local directory provider is not initialized'),
      loading: () => null,
    );
  }
}
