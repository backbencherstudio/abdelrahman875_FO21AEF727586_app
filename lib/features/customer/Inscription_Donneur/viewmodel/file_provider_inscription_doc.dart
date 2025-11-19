import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/legacy.dart';

final fileProviderInspectionDoc =
    StateNotifierProvider<
      FileProviderInspectionDocNotifier,
      FileInspectionDocModel
    >((ref) => FileProviderInspectionDocNotifier());

class FileProviderInspectionDocNotifier
    extends StateNotifier<FileInspectionDocModel> {
  FileProviderInspectionDocNotifier()
    : super(FileInspectionDocModel(files: {}));

  void addFile({required String key, required File file}) {
    final updatedFiles = Map<String, File>.from(state.files);
    updatedFiles[key] = file;

    state = state.copyWith(files: updatedFiles);
  }

  void removeFile(String key) {
    final updatedFiles = Map<String, File>.from(state.files);
    updatedFiles.remove(key);
    state = state.copyWith(files: updatedFiles);
  }

  File? getFile(String key) {
    log(state.files[key]?.path ?? "null=====================");
    return state.files[key];
  }

  void clearAll() => state = FileInspectionDocModel(files: {});
}

class FileInspectionDocModel {
  final Map<String, File> files;

  FileInspectionDocModel({required this.files});

  FileInspectionDocModel copyWith({Map<String, File>? files}) {
    return FileInspectionDocModel(files: files ?? this.files);
  }
}

final fileAutoShowProvide = StateProvider((ref) => false);
