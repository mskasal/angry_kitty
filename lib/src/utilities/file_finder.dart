import 'dart:io';

import 'package:angry_kitty/src/utilities/types.dart';

Stream<FileStatus> fileFinder(
    {required String fileDirectory, required String fileName}) async* {
  yield FileStatus.starting;
  String directory = Directory(fileDirectory).path;
  List<FileSystemEntity> files =
      Directory(directory).listSync(recursive: false);
  yield FileStatus.loading;
  List<String> filePaths = [];
  for (var fileSystemEntity in files) {
    if (fileSystemEntity.path.contains(fileName)) {
      filePaths.add(fileSystemEntity.path);
    }
  }

  if (filePaths.length == 0) {
    yield FileStatus.notFound;
  } else {
    yield FileStatus.found;
  }
}
