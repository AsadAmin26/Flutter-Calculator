import 'package:flutter/material.dart';
import './screens/appui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.cyan),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomeUi(),
    );
  }
}
