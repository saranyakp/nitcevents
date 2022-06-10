import 'package:flutter/material.dart';
import 'main.dart';
import 'changepassword.dart';
import 'managecategory.dart';
import 'managevenue.dart';
import 'addevent.dart';



void main() => runApp(
  Dashboard(),
);

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('NITC Events'),
        backgroundColor: Color.fromRGBO(49, 30, 92,1),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(padding: const EdgeInsets.all(40.0)),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom:50.0),
              child: Center(
                /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                child: Text(
                  'Admin Dashboard',
                  style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold,),),
              ),
            ),
            Container(

              height: 90,
              width: 250,

              decoration: BoxDecoration(
                  color: Color.fromRGBO(49, 30, 92, 1), borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Addevents()));
                },
                child: Text(
                  'Add event',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),],
        ),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
            children: <Widget>[
              DrawerHeader(
                child: Center(

                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(49, 30, 92, 1),
                ),
              ),
              ListTile(

                  title: Text('Change password'),
                  onTap: () => {  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangePwd()),
                  ),
                  }
              ),
              ListTile(

                  title: Text('Manage category'),
                  onTap: () => {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Addcategories()),
                  ),}
              ),

              ListTile(

                  title: Text('Manage venue'),
                  onTap: () => {Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>Addvenues())
                  ),}
              ),
              ListTile(

                title: Text('Logout'),
                onTap: () => { _showDialog(context)},


              )
            ]))
    ;
  }
}
_showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: AlertDialog(

            content: Text('Do you wanna logout now'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text('logout', style: TextStyle(color: Colors.black),),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Dashboard()));
                },
                child: Text('No', style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        );
      }
  );
}