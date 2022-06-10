import 'dart:ui';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:nitcevents/login.dart';
import 'discoverpage.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final DBref =FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color.fromRGBO(49, 30, 92, 1),
        body:
        Container(
            width: double.infinity, decoration:
        BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://cdn2.vectorstock.com/i/1000x1000/54/46/business-manager-controls-organize-time-vector-19765446.jpg"),
          ),
        ),



            child:Column(children: <Widget>[
              Center(child: Container(padding: EdgeInsets.fromLTRB(20, 50, 20, 20), child: Text('Welcome to NITCEvents', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black)))),
              Padding(padding: const EdgeInsets.all(140.0)),
              Center(child: Text("Are you an admin?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))),
              Padding(padding: const EdgeInsets.all(12.0)),
              FloatingActionButton.extended(
                heroTag: null,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginDemo()));
                },
                label: const Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              Padding(padding: const EdgeInsets.all(12.0)),
              Center(child: Text("Looking for Events?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))),
              Padding(padding: const EdgeInsets.all(12.0)),
              FloatingActionButton.extended(
                heroTag: null,
                backgroundColor: Colors.green,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Discover()));
                },
                label: const Text("Discover now!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
              )
            ])));
  }
// @override
//void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//  super.debugFillProperties(properties);
//  properties.add(DiagnosticsProperty('DBref', DBref));
// }
}