import 'package:flutter/material.dart';
import 'package:jobee/app/app.dart';
import 'package:jobee/data/local/storage_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageRepository.init();
  runApp(const App());
}
