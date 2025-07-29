import 'package:flutter/material.dart';
import 'package:real_note_app/Pages/floders_page.dart';
import 'package:real_note_app/Pages/home_page.dart';
import 'package:real_note_app/Theme/theme_data.dart';
import 'package:real_note_app/Widgets/main_navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: HomePage(),
    );
  }
}
