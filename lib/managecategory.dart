import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'admindashboard.dart';
//void main() => runApp((Addcategories));

class Addcategories extends StatelessWidget {
  Addcategories({ key}) : super(key: key);
  final DBref=FirebaseDatabase.instance.reference();
  final category=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color.fromRGBO(49, 30, 92, 1),
        appBar: AppBar(
          title: Text("Manage Category "),
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
  }_showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: AlertDialog(

                content: Text('To add category'),
                actions: [
                  TextField(


                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter category',
                    ),
                    controller: category,
                  ),

                  TextButton(
                    onPressed: () {
                      if (category.text == "") {
                        dy_showDialog(context);
                      }
                      else {
                        dynamic_showDialog(context);
                      } },


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
                          MaterialPageRoute(builder: (_) => Addcategories()));
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
                      addcategory();
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => Addcategories()));
                    },
                    child: Text('Ok', style: TextStyle(color: Colors.black),),
                  ),
                ]
            ),
          );
        }

    );}

  addcategory() {
    DBref.child("Addcategory").child(category.text).set({
      'categories': category.text,
    });
  }

}


