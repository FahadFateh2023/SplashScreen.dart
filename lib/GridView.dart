import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(home: MyApp())
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var images = [
    'nature-green-vegetation-path-wallpaper-preview.jpg',
    'wp7777150-jungle-4k-wallpapers.jpg',
    'MYXJ_20230203184833_save.jpg',
    'deep-in-the-jungle-beautiful-waterfall-in-tropical-green-forest-desktop-wallpaper-hd-1920×1200-wallpaper-preview.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          leading: Icon(Icons.arrow_back),
          title: Text("My app"),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: images.length,
            itemBuilder: (bc, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FullScreen()),
                  );
                },
                child: GridTile(
                  child: Image.asset(images[index],
                  fit: BoxFit.cover),
                  header: Text("The header"),
                  footer: Text("This is a footer"),
                ),
              );
            }));
  }
}

class FullScreen extends StatelessWidget {
  FullScreen({Key? key, this.photo}) : super(key: key);
var photo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Image(image: AssetImage(photo),),onTap: (){
      Navigator.pop(context);
    },);
  }
}

