import 'package:flutter/material.dart';
import 'forgotpassword.dart';
import 'admindashboard.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0, bottom:50.0),
              child: Center(
                /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                child: Text(
                  'NITC EVENTS',
                  style: TextStyle(color: Colors.white, fontSize: 30),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top:20,bottom: 0),
              // padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@nitc.ac.in'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 20, bottom: 0),
              // padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),

            TextButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ForgotPwd()));
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 16),
              ),
            ),
            Container(

              height: 50,
              width: 250,

              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Dashboard()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}