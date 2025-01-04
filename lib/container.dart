import 'package:flutter/material.dart';

void main() {
  runApp(MyContainer());
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black, width: 5), borderRadius:const BorderRadius.all(Radius.circular(17))
                ),
                child: Center(
                  child: Transform.rotate(
                    angle: -32.0, 
                    child: Container(
                      width: 90,
                      height: 90,
                      color: Colors.red,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Transform.rotate(
                            angle: -0.30, 
                            child: Container(
                              width: 60,
                              height: 60,
                              color: Colors.green,
                              
                              child:const Center(
                                child: Text(
                                  "hello", 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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