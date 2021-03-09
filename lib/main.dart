import 'package:flutter/material.dart';
import 'package:flutter_workshop_2/home_page.dart';

void main() {
  runApp(MyApp());
}

// Stateless Widget

// Stateful Widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
