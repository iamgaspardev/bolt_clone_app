import 'package:bolt_clone_app/pages/home.dart';
import 'package:bolt_clone_app/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bolt Clone App',
       theme: ThemeData(
        primaryColor: Color(0xFF34BB78),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
