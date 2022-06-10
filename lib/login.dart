import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'forgotpassword.dart';
import 'admindashboard.dart';


final DBref=FirebaseDatabase.instance.reference();
final emailid=TextEditingController();
final password=TextEditingController();
class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 30, 92, 1),
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
                    labelStyle: TextStyle(color:Colors.white),
                    hintText: 'Enter valid email id as abc@nitc.ac.in'),
                controller: emailid,),
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
                    labelStyle: TextStyle(color:Colors.white),
                    hintText: 'Enter secure password'),
                controller: password,),

            ),

            TextButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ForgotPwd()));
              },
              child: Text(
                'Forgot password',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
            Container(

              height: 50,
              width: 250,

              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {

                  if (emailid.text == "admin" && password.text == "1234") {
                    dynamic_showDialog(context);
                  }
                  else {
                    _showDialog(context);
                  } },
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
_showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
              content: Text('Wrong email or password'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LoginDemo()));
                  },
                  child: Text('Close', style: TextStyle(color: Colors.black),),
                ),
              ]
          ),
        );
      }

  );
}

dynamic_showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: AlertDialog(
              content: Text('succesfully logged in'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Dashboard()));
                  },
                  child: Text('Ok', style: TextStyle(color: Colors.black),),
                ),
              ]
          ),
        );
      }

  );}