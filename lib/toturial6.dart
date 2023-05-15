import 'package:flutter/material.dart';
import 'NumberNine.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final text1 = TextEditingController();
  final text2 = TextEditingController();

  String show = '';
  // final result1 = int.parse(text1);
  // final result2 = int.parse(text2);
  // final result = result1+result2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Expanded(
                child:Container(
                  child: Center(
                    child: Text(show),
                  ),
                ),
            ),
          TextField(
            controller: text1,
            decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: "Enter First Number"),
            autofocus: true,
            cursorHeight: 20.0,

          ),
            TextField(
              controller: text2 ,

              decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: "Enter Second Number",),autofocus: true,


            ),
            MaterialButton(onPressed: (){
              setState(() {
                int number1 = int.parse(text1.text);
                int number2 = int.parse(text2.text);
                int result = number1+number2;
                String resultInString = '';
                show = '$result';
              });
            },color: Colors.blue,child: Text("Add"),)
        ],
      ),
    )
    );
  }
}
