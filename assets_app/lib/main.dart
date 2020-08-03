import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bar'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              child: Card(
                color: Colors.red,
                child: Image.asset('assets/killme.gif'),
                elevation: 5,
              ),
            ),
            Container(
              width: 100,
              height: 50,
              child: RaisedButton(
                color: Colors.amber,
                onPressed: () {
                  print('hihi');
                  var a = AudioCache();
                  a.play('notification.mp3');
                },
                child: Card(
                  color: Colors.green,
                  child: Text('sec'),
                  elevation: 5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}