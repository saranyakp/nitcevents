import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';



class Addvenues extends StatelessWidget {
  Addvenues({ key}) : super(key: key);
  final DBref=FirebaseDatabase.instance.reference();
  final venue=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color.fromRGBO(49, 30, 92, 1),
        appBar: AppBar(
          title: Text("Manage Venue"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              ElevatedButton(
                onPressed: () {
                  _showDialog(context);
                },
                child: Text("Add"),
              ),

            ],
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: AlertDialog(

                content: Text('To add venue'),
                actions: [
                  TextField(


                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter venue',
                    ),
                    controller: venue,
                  ),

                  TextButton(
                    onPressed: () {
                      if (venue.text == "") {
                        dy_showDialog(context);
                      }
                      else {
                        dynamic_showDialog(context);
                      }
                    },
                    child: Text('Add', style: TextStyle(color: Colors.black),),
                  ),
                ]
            ),
          );
        }

    );
  }





  dy_showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: AlertDialog(
                content: Text('Try again'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => Addvenues()));
                    },
                    child: Text('Ok', style: TextStyle(color: Colors.black),),
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
                content: Text('Added succesfully'),
                actions: [
                  TextButton(
                    onPressed: () {
                      addvenue();
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => Addvenues()));
                    },
                    child: Text('Ok', style: TextStyle(color: Colors.black),),
                  ),
                ]
            ),
          );
        }

    );}


  addvenue() {
    DBref.child("Addvenue").child(venue.text).set({
      'venues': venue.text,
    });
  }

}