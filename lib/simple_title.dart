import 'package:flutter/material.dart';

void main() {
  runApp(SimpleTitle());
}

class SimpleTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample title',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.red,
          leading: Row(
            children: [
              IconButton(
              
              icon: Icon(Icons.emoji_emotions_outlined,),color: Colors.white, // أيقونة الإيموجي
              onPressed: () {
                
              },
            ),
            ],
          ),
          actions: [
            
            
            IconButton(
              icon: Icon(Icons.directions_bike),color: Colors.white, 
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(Icons.directions_bus),color: Colors.white, 
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),color: Colors.white, 
              onPressed: () {
                
              },
            ),
          ],
        ),
        body: 
        
        const Center(
          
          
          child:  Text('Hello',style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}