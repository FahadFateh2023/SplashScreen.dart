import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyList(),
    ),
  );
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  var programmersName = ["Elon Musk","James Gosling","Nelson","Bill Gates","Mark Zakerberg","Guide van Rosoom","Abdul Manan"];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: const Text('Top Ten Programmers')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.computer_sharp),
              title: Text('Elon Musk'),
              subtitle: Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('Bill Gates'),
              subtitle: const Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('James Gosling'),
              subtitle: const Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('Tim Burner Lee'),
              subtitle: const Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('Guido van Rossom'),
              subtitle: const Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('Mark Zaker Berk'),
              subtitle: const Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('Jeff Bezos'),
              subtitle: const Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('Ali Baba'),
              subtitle: const Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('Rum Fernan'),
              subtitle: const Text('This is a subtitle'),
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.computer_sharp),
              title: const Text('Tem Guido'),
              subtitle: const Text('This is a subtitle'),
            ),
          ],
        ),
      ),
    );
  }
}
