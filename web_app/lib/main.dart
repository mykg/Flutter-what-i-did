import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main(){
  runApp(MyApp());
}

mydata() async {
  //var url = 'http://192.168.99.101/home.html';
  var url = 'http://192.168.99.101/cgi-bin/date.py';
  var r = await http.get(url);
  //var sc = r.statusCode;
  var data = r.body;
  print(data);
}

mybody(){
  return Column(
    children: <Widget>[
      RaisedButton(
        onPressed: mydata,
        child: Text('press me'),
        ),
        RaisedButton(
        onPressed: mydata,
        child: Text('press me'),
        ),
    ],
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('web app'),
          ),
          body: mybody(),
      ),
    );
  }
}