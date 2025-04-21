import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light, // Forces light mode
      home: const App(), // Your root widget
    ),
  );
}



