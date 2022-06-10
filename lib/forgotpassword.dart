import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'newpassword.dart';

final DBref=FirebaseDatabase.instance.reference();
final emailid=TextEditingController();
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ForgotPwd(),
//     );
//   }
// }

class ForgotPwd extends StatefulWidget {
  @override
  _ForgotPwdState createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 30, 92, 1),
      appBar: AppBar(
        title: Text("Forgot Password"),
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
                  'FORGOT PASSWORD',
                  style: TextStyle(color: Colors.white, fontSize: 26),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top:5,bottom: 30),
              // padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your email-id',
                  labelStyle: TextStyle(color:Colors.white),
                ),
                controller: emailid, ),
            ),

            Container(

              height: 50,
              width: 250,

              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  if (emailid.text != "admin_nitcevents@nitc.ac.in" || emailid.text=="" ) {
                    dynamic_showDialog(context);
                  }
                  else {

                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => NewPwd()));
                  } },

                child: Text(
                  'Continue',
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
dynamic_showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: AlertDialog(
              content: const Text('Wrong email'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ForgotPwd()));
                  },
                  child: Text('Ok', style: const TextStyle(color: Colors.black),),
                ),
              ]
          ),
        );
      }

  );
}



