import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("My first app"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
         child:  Container(
           child: Column(
             children: [
               Text("Hello World"),
               Icon(Icons.settings),
               Icon(Icons.add)
             ],
           ),
         ),
        ),
      ),
    ),
  );
}