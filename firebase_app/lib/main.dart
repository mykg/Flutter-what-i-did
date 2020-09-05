import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  Firebase.initializeApp(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var fsconnect = FirebaseFirestore.instance;

  myget() async {
    var d = await fsconnect.collection("students").get();
    //print(d.docs[0].data());
    for(var i in d.docs) {
      print(i.data());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                fsconnect.collection("students").add({
                  'name': 'raj',
                  'title': 'CtO',
                  'email': 'ajsi@haxl'
                });
                print('send');
                }, 
              child: Text('send')
              ),
              RaisedButton(
              onPressed: () {
                myget();
                print('get');
                }, 
              child: Text('receive')
              ),
          ],
        ),
      )
    );
  }
}