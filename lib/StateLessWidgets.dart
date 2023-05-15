import 'package:flutter/material.dart';
void main(){

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              StateLessWidget1(),
              StateLessWidget2(),
              StateLessWidget3(),
            ],
              ),
        ],
      ),
    )
  )
    )
  );

}

class StateLessWidget1 extends StatelessWidget {
  const StateLessWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Flutter is working with dart programming language!!!");
  }
}

class StateLessWidget2 extends StatelessWidget {
  const StateLessWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}

class StateLessWidget3 extends StatelessWidget {
  const StateLessWidget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.man_2_rounded);
  }
}


