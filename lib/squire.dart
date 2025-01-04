import 'package:flutter/material.dart';

void main() {
  runApp(Squires());
}

class Squires extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shape Example',
      home: Scaffold(
        backgroundColor: Colors.black, // خلفية التطبيق
        body: Center(
          child: Container(
            width: 200, // عرض الحاوية
            height: 200, // ارتفاع الحاوية
            decoration: BoxDecoration(
              color: Colors.blue, // لون الخلفية الخارجي
              borderRadius: BorderRadius.circular(20), // زوايا دائرية
              border: Border.all(color: Colors.black, width: 4), // الحدود الخارجية
            ),
            child: Center(
              child: Container(
                width: 150, // عرض الحاوية الداخلية
                height: 150, // ارتفاع الحاوية الداخلية
                decoration: BoxDecoration(
                  color: Colors.red, // لون الخلفية الداخلية
                  borderRadius: BorderRadius.circular(20), // زوايا دائرية
                ),
                child: Center(
                  child: Container(
                    width: 100, // عرض الحاوية النهائية
                    height: 100, // ارتفاع الحاوية النهائية
                    decoration: BoxDecoration(
                      color: Colors.green, // لون الخلفية النهائية
                      borderRadius: BorderRadius.circular(20), // زوايا دائرية
                    ),
                    child: const Center(
                      child: Text(
                        'hello',
                        style: TextStyle(color: Colors.white, fontSize: 20), // نص "hello"
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}