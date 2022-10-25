import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'image.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Future_choiceimage(),
    );
  }
}