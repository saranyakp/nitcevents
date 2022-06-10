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
      home: ChangePwd(),
    );
  }
}

class ChangePwd extends StatefulWidget {
  @override
  _ChangePwdState createState() => _ChangePwdState();
}

class _ChangePwdState extends State<ChangePwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 30, 92, 1),
      appBar: AppBar(
        title: Text("Change Password"),
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
                  'CHANGE PASSWORD',
                  style: TextStyle(color: Colors.white, fontSize: 26),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top:5,bottom: 0),
              // padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Current password',
                  labelStyle: TextStyle(color:Colors.white),
                ),
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
                    labelText: 'New password',
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
                    labelText: 'Re-enter new password',
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