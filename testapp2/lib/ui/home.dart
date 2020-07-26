import 'package:flutter/material.dart';

myapp() {
  var mybody = Container(
    width: 300,
    height: 300,
    //color: Colors.redAccent,
    child: Text(
    'shinra', 
    style: TextStyle(
      color: Colors.teal, 
      fontWeight: FontWeight.bold, 
      fontSize: 32,
      ),
    ),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpufN4jmhlioA6Bgg8ydWF1gBYWUK7AeoCz-zbkUPMkkIzOhdK&s'),
        ),
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