import 'package:flutter/material.dart';
void main() =>  runApp(
  MaterialApp(
    home:MyApp() ,
  ),
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        leading: Icon(Icons.arrow_back),
      ),
      body:
      GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 200.0,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('First', style: TextStyle(fontSize: 20)),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Second', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Third', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Four', style: TextStyle(fontSize: 20)),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Fifth', style: TextStyle(fontSize: 20)),
            color: Colors.yellow,
          ),
          Container(

            padding: const EdgeInsets.all(8),
            child: const Text('Six', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
        ],
      )
    );
  }
}
