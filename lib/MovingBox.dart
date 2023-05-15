import 'package:flutter/material.dart';
import 'dart:math';

void main() =>
  runApp(
    MaterialApp(
      home: MyApp(
      ),
    )
  );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myColor = Colors.green;
  var myTilte = "myApp";
  var colors = [Colors.black,Colors.white, Colors.blue, Colors.green, Colors.deepOrange, Colors.red, Colors.yellow, Colors.purple, Colors.indigo, Colors.cyanAccent ];
  @override

  var leftt = 20.0;
  var topp = 20.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        title: Text(myTilte),
      ),
      body: Stack(
        children: [
          Positioned(
            left: leftt,
            top: topp,
            child: GestureDetector(

              onTap: (){
                  myTilte = "Single clicked";
                leftt = leftt+10;
                topp = topp + 10;
                  setState(() {});

              },

              onDoubleTap: (){
                myTilte = "Double clicked";
                setState(() {});
              },

              onLongPress: (){
                myTilte  = "Long press";
                setState(() {});
              },

              onPanUpdate: (ud){
                if(leftt<=0) {
                  myColor = Colors.red;
                }
                leftt += ud.delta.dx;
                topp += ud.delta.dy;
                setState(() {});
              },


              child: Container(
                width: 100,
                height:100,
    color:colors[Random().nextInt(colors.length)],
              ),
            ),
          )
        ],
      ),
    );
  }
}

