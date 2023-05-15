import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';


void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {

  void playSound(int songNumber){
    // final player = AudioCache();
    // player.play('song$songNumber');
  }
  dynamic expand(int number){
    Expanded(
      child: FloatingActionButton(onPressed: (){
        playSound(number);
      },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.orangeAccent,
        child: Text("Click me", style: TextStyle(color: Colors.grey),),
      ),
    );
  }
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone app"),
          backgroundColor: Colors.lightGreenAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            expand(1),
            expand(2),
            expand(3),
            expand(4),
            expand(5),
            expand(6),
            expand(7),
          ],
        ),
      ),
    );
  }
}

