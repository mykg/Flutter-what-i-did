import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

String x;

class MyApp extends StatelessWidget {

  web(cmd) async {
    print(cmd);
    var url = 'http://192.168.99.101/cgi-bin/$cmd.py';
    var r = await http.get(url);
    print(r.body);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bar'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 380,
            height: 200,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Card(
                  child: TextField(
                    onChanged: (val) {
                      x = val; 
                    },
                    autofocus: true,
                    enabled: true,
                    cursorColor: Colors.amber,
                    style: TextStyle(height: 2),
                    decoration: InputDecoration(
                      hintText: 'Enter Your Commnad'
                    ),
                  ),
                ),
                Card(
                  child: FlatButton(
                    onPressed: () {
                      //print(x);
                      web(x);
                    }, 
                    child: Text('click here'),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}