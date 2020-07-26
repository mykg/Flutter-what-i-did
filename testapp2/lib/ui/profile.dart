import 'package:flutter/material.dart';

myprofile() {
  var mybody = Container(
    width: 300,
    height: 300,
    //color: Colors.redAccent,
    alignment: Alignment.bottomCenter,
    child: Column(
      children: <Widget>[
        Text('hello'),
        Text('final'),
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpufN4jmhlioA6Bgg8ydWF1gBYWUK7AeoCz-zbkUPMkkIzOhdK&s'),
      
      ],
    ),
    decoration: BoxDecoration(  
      color: Colors.amber,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(
        width: 5,
        color: Colors.blue,
      ),
    ),
  );
  
  var myhome = Scaffold(
    appBar: AppBar(
      title: Text('Bar'),
      backgroundColor: Colors.lightGreenAccent,
    ),
    body: Center(child: mybody),
  );
  return MaterialApp(home: myhome,);
}