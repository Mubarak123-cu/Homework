import 'package:flutter/material.dart';

void main() {
  runApp(Containers());
}

class Containers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Container',
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
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
              icon: const Icon(Icons.error_outline, size: 30.0,),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, size: 30,),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // First container
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.blue,
                padding: const EdgeInsets.all(20),
                child: const Center(
                  child: Text(
                    "I am container",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              // Slanting container 1
              Transform.rotate(
                angle: 0.2,
                child: Container(
                  width: 600,
                  margin: const EdgeInsets.all(40),
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text(
                      "Hai, I am Slanting",
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              // Slanting container 2 with rounded edges
              Transform.rotate(
                angle: 0.1,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                    child: Text(
                      "I am also Slanting, but see my edges",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              // Nested containers (concentric squares)
              Container(
                margin: const EdgeInsets.all(20),
                color: Colors.blue,
                height: 200,
                width: 200,
                child: Center(
                  child: Container(
                    color: Colors.yellow,
                    height: 150,
                    width: 150,
                    child: Center(
                      child: Container(
                        color: Colors.green,
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Container(
                            color: Colors.red,
                            height: 50,
                            width: 50,
                            child:Center(
                              child: Container(
                              height: 25,
                              width:25 ,
                              color: const Color.fromRGBO(41, 48, 139, 1),
                            ),
                            ) 
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
