import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ButtonPage(),
    ));

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}
class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Positioned(
        top: 50,
        child: Container(
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                 Column(
                   children: [
                     ElevatedButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const AboutPage()),
                           );
                         },
                         child: Icon(
                           Icons.info_outline,
                           color: Colors.black,
                           size: 80.0,
                           weight: 10.0,
                         )
                     ),
                     SizedBox(height: 10.0),
                     ElevatedButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => const FaceBookPage()),
                           );
                         },
                         child: Icon(
                           Icons.facebook,
                           color: Colors.black,
                           size: 80.0,
                           weight: 10.0,
                         )),
                     SizedBox(height: 10.0),
                     ElevatedButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const Instagram()),
                           );
                         },
                         child: Icon(
                           Icons.linked_camera_outlined,
                           color: Colors.black,
                           size: 80.0,
                           weight: 10.0,
                         )),
                     SizedBox(height: 10.0),
                   ],
                 ),
                 Column(
                   children: [
                     ElevatedButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const Calculator()),
                           );
                         },
                         child: Text("SignIn",style: TextStyle(color: Colors.black),)),
                     SizedBox(height: 10.0,),
                     ElevatedButton(
                       style: ButtonStyle(iconSize: MaterialStatePropertyAll(80)),
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const SignIn()),
                           );
                         },

                         child:Text("SignUp", style: TextStyle(color: Colors.black))),
                     SizedBox(height: 10.0,),
                     ElevatedButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const signUpPage()),
                           );
                         },
                         child: Icon(
                           Icons.calculate_outlined,
                           color: Colors.black,
                           size: 80.0,
                           weight: 10.0,
                         )),
                     SizedBox(height: 10.0,),
                   ],
                 )
                ],
              ),
            ),
          ),
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.elliptical(20, 20),
                right: Radius.elliptical(20, 20))),
        backgroundColor: Colors.blueGrey[800],
        title: Text(
          "Assignment Home Page",
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          height: 5,
        ),
      ),
    );
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}
class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
              )),
              Icon(Icons.person),
            ],
          ),
          Divider(height: double.infinity,),

          Row(
            children: [
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Birthday',
                  )),
              Icon(Icons.calendar_month)
            ],
          ),
          Divider(height: double.infinity,),

          Row(
            children: [
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                  )),
              Icon(Icons.phone_android_outlined)
            ],
          ),
          Divider(height: double.infinity,),

          Row(
            children: [
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Instagram account',
                  )),
              Icon(Icons.camera_enhance)
            ],
          ),
          Divider(height: double.infinity,),

          Row(
            children: [
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  )),
              Icon(Icons.mail_outline_outlined)
            ],
          ),
          Divider(height: double.infinity,),

          Row(
            children: [
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  )),
              Icon(Icons.remove_red_eye_outlined)
            ],
          ),
          Divider(height: double.infinity,),

          ListTile(
            title: Text("Edit Prfile", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
            tileColor: Colors.deepPurpleAccent,
            hoverColor: Colors.blue,
    )

        ],
      ),
      appBar: AppBar(
        leading: Center(child: CircleAvatar(child: Icon(Icons.person))),
        backgroundColor: Colors.black45,
        title: Text('Info page'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
      ),
    );
  }
}

class FaceBookPage extends StatefulWidget {
  const FaceBookPage({Key? key}) : super(key: key);

  @override
  State<FaceBookPage> createState() => _FaceBookPageState();
}
class _FaceBookPageState extends State<FaceBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child:Image(
             image: NetworkImage(
                 'https://images.unsplash.com/photo-1633675254053-d96c7668c3b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
              fit: BoxFit.cover,
            ),
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Phone Number Or Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
          ),
          SizedBox(
            width: 400.0,
            height: 50.0,
            child: ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            "Forgot Password ?",
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          SizedBox(height: 20.0),
          Text(
            "Back",
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          SizedBox(height: 40.0),
          Text(
            "-------------  OR  -------------",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          SizedBox(height: 60.0),
          Container(
            width: 400,
            height: 50,
            color: Colors.blueGrey,
            child: ElevatedButton(
              child: Text(
                "Create New Account",
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signUpPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class signUpPage extends StatefulWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  State<signUpPage> createState() => _signUpPageState();
}
class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            color: Colors.white,
            child: Icon(
              Icons.message,
              color: Colors.black,
              size: 80,
            ),
          )),
          Text("Sign Up",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Container(
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.person),
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "UserName",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.person),
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.person),
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.person),
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm Password",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blueGrey,
            child: Center(
                child: Text(
              "SIGN UP",
              style: TextStyle(color: Colors.blue, fontSize: 50),
            )),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text("Already have an account? "),
              Text(
                "Login",
                style: TextStyle(color: Colors.blue),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}
class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Instagram",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'EmotionalRescuePersonalUseRegular'
              )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "User name",
                labelText: "User name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  labelText: "Password"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text("Forgot password?",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.blue),
          ),
          Container(
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20 ))  ,
            width: 300,
            height: 50,
            color: Colors.lightBlue,
            child: ElevatedButton(
              child: Text("Login",
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 5.0),
          Text("-------------  OR  -------------",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          SizedBox(height: 7.0),
          Row(
            children: [
              Icon(Icons.facebook),
              Text("Log in with facebook",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 3.0),
          Divider(),
          Row(
            children: [
              Text("Don't have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const signUpPage()));
                  },
                  child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Icon(Icons.message_outlined, color: Colors.blue),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sign In",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              height: 50,
              width: 200,
              color: Colors.blue,
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.blue,
                      hintText: "Name",
                      labelText: "Name",
                    ),
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              height: 50,
              width: 200,
              color: Colors.blue,
              child: Row(
                children: [
                  Icon(
                    Icons.key,
                    color: Colors.white,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.blue,
                      hintText: "Password",
                      labelText: "Password",
                    ),
                    style: TextStyle(),
                  ),
                  Icon(Icons.remove_red_eye, color: Colors.white),
                ],
              ),
            ),
            Text(
              "Forgot password? ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blue[500]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              width: 80,
              child: ElevatedButton(
                child: Text("LOGIN"),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("----------------- OR -----------------"),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 30,
                  shadows: [BoxShadow(color: Colors.black)],
                ),
                CircleAvatar(
                  child: Text("Google"),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                CircleAvatar(
                  child: Text("Twiter"),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Register now using ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text("Email",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Text("This is a calculator");




  }
}
