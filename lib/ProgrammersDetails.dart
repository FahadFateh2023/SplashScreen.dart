import 'dart:collection';
import 'dart:io';
import 'package:app12/ProgrammerDataModel.dart';
import 'package:flutter/material.dart';

class ProgrammersDetails extends StatelessWidget {
  final ProgrammerDataModel programmersDataModel;

  const ProgrammersDetails({Key? key, required this.programmersDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text(programmersDataModel.name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(programmersDataModel.imageUrl,fit: BoxFit.fill,height: 300,width: double.infinity,),
          SizedBox(
            height: 10,
          ),
          Text(programmersDataModel.description,textAlign: TextAlign.center,style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),),
          SizedBox(
            height: 10,
          ),
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Text('http//:...')),
            );
          }, icon: Text("More Information...", style: TextStyle(fontSize: 10, color: Colors.blue),))
        ],
      ),
    );
  }
}
