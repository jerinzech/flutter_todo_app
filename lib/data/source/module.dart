import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/data/source/files_memory_impl.dart';

import 'files.dart';

final filesProvder = Provider<Files>((ref) {
  return FilesMemoryImpl();
});
