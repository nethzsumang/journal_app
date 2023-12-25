import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:journal_app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // For now, only portrait device orientation is supported.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const App());
}
