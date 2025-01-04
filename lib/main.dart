import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';

void main() {
  runApp(const MyApptodo());
}

class MyApptodo extends StatelessWidget {
  const MyApptodo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
