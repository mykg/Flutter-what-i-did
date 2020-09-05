import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

myweb() async {
  var url = 'http://192.168.99.101/cgi-bin/web.py?x=date';
  var r = await http.get(url);
  var data = r.body;
  var fdata = jsonDecode(data);
  print(fdata);
  print(fdata.runtimeType);
  print(fdata['op']);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bar'),),
        // ignore: missing_required_param
        body: FlatButton(
            child: Text('body'),
            onPressed: myweb,
          ),
      ),
    );
  }
}