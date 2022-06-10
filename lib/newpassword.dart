import 'package:flutter/material.dart';
import 'main.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewPwd(),
    );
  }
}

class NewPwd extends StatefulWidget {
  @override
  _NewPwdState createState() => _NewPwdState();
}

class _NewPwdState extends State<NewPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 30, 92, 1),
      appBar: AppBar(
        title: Text("New Password"),
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
                  'NEW PASSWORD',
                  style: TextStyle(color: Colors.white, fontSize: 26),),
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
                    labelText: 'Enter new password',
                    labelStyle: TextStyle(color:Colors.white),
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 20, bottom: 30),
              // padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm new password',
                    labelStyle: TextStyle(color:Colors.white),
                    hintText: 'Enter secure password'),
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
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Submit',
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