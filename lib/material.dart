import 'package:flutter/material.dart';

void main() {
  runApp(Materialss());
}

SizedBox sz = SizedBox();

class Materialss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'MaterialApp',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color.fromRGBO(89, 3, 97, 1),
            leading: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  color: Colors.black,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.error_outline,
                  size: 30.0,
                ),
                color: Colors.black,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                ),
                color: Colors.black,
                onPressed: () {},
              ),
            ],
          ),
          body: Center(
        child: Container(
          height: 735, 
          width: 380,
          color: const Color(0xFF8A74BA),
          child: Column(
            children: [
              Container(
                width: double.infinity, 
                color: Colors.blue, 
                padding: const EdgeInsets.all(10),   
                child: const Center(
                  child: Text(
                    'MaterialApp',    
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,  
                    ),
                  ),
                ),
              ),
              const Expanded(child:  Center(
                
                child: Padding(padding: EdgeInsets.all(20.0), 
                child: Text('A convenience widget that wraps a number of widgets that are commonly required for applications implementung Material Design',
                 textAlign: TextAlign.center, 
                 style: TextStyle(fontSize: 14, color: Colors.black),
                 
                 ),
                
                )
                
              ))
            ],
          ),
        ),
      ),
),
    );
  }
}
