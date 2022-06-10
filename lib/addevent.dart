import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:nitcevents/admindashboard.dart';

class Addevents extends StatelessWidget {
  Addevents({ key}) : super(key: key);
  final DBref=FirebaseDatabase.instance.reference();
  final eventname=TextEditingController();
  final eventid=TextEditingController();
  final duration=TextEditingController();
  final date=TextEditingController();
  final time=TextEditingController();
  final venue=TextEditingController();
  final category=TextEditingController();
  final additionaldesc=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromRGBO(49, 30, 92, 1),

            appBar: AppBar(
              title: Text('Add Event'),
              backgroundColor: Colors.blueGrey,
              // ignore: prefer_const_constructors

              titleTextStyle: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 30,

                fontWeight: FontWeight.bold,
                shadows: <Shadow>[Shadow(
                  offset: Offset(1.0, 1.0),
                  color: Colors.tealAccent,
                )
                ],
              ),
            ),

            body: Column(

                children: [
                  Padding(

                    padding: const EdgeInsets.all(1),
                    child: TextField(

                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(width: 0.8)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(width: 0.8, color: Theme
                                .of(context)
                                .primaryColor)
                        ),
                        hintText: "Enter Event name",

                      ),
                      controller: eventname,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: const BorderSide(width: 2.0)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(width: 0.8, color: Theme
                                .of(context)
                                .primaryColor)
                        ),
                        hintText: "Enter Event id",

                      ),
                      controller: eventid,),),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(width: 0.8)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(width: 0.8, color: Theme
                                .of(context)
                                .primaryColor)
                        ),
                        hintText: "Enter duration",

                      ),
                      controller: duration,),),

                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(width: 0.8)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(width: 0.8, color: Theme
                                .of(context)
                                .primaryColor)
                        ),
                        hintText: "Enter date",

                      ),
                      controller: date,),),

                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(width: 0.8)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(width: 0.8, color: Theme
                                .of(context)
                                .primaryColor)
                        ),
                        hintText: "Enter time",

                      ),
                      controller: time,),),

                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(width: 0.8)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(width: 0.8, color: Theme
                                .of(context)
                                .primaryColor)
                        ),
                        hintText: "Enter venue",

                      ),
                      controller: venue,),),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(width: 0.8)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(width: 0.8, color: Theme
                                .of(context)
                                .primaryColor)
                        ),
                        hintText: "Enter category",

                      ),
                      controller: category,),),
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: ElevatedButton(child:const Text( "Add Event"),
                        onPressed:(){ addevents();
                        Navigator.push(
                          context,MaterialPageRoute(builder:
                            (context) => MyApp()),
                        );
                        }
                    ),
                  ), ]
            )

        )
    );
  }
  addevents() {
    DBref.child("Addevent").child(eventid.text).set({
      'eventide':eventid.text,
      'eventuate':eventname.text,
      'date':date.text,
      'time':time.text,
      'duration':duration.text,
      'venue':venue.text,
      'category':category.text,
      'additionally':additionaldesc.text,
    });
  }
}