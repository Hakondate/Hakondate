import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final localDirectoryProvider = FutureProvider<LocalDirectory>((ref) async {
  final Directory directory = await getApplicationDocumentsDirectory();
  return LocalDirectory(directory);
});

class LocalDirectory extends StateNotifier<Directory> {
  LocalDirectory(Directory directory) : super(directory);

  String get path => state.path;
}
