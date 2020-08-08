import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyTechApp());

web(cmd, imagename) async {
  var url = 'http://192.168.99.101/cgi-bin/web.py?x=$cmd&y=$imagename';
  var response =  await http.get(url);
  print(response.body); 
}

class  MyTechApp extends StatelessWidget {

  String cmd;
  String imagename;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Docker App'),
        ),
        body: Center(
          child: Container(
            width: 380,
            height: 300,
            color: Colors.grey.shade300,
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (value){
                   cmd = value;
                  },
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Your Docker OS name",
                    prefixIcon: Icon(Icons.smartphone),
                  ),
                ),
                TextField(
                  onChanged: (value){
                   imagename = value;
                  },
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Your Image Name",
                    prefixIcon: Icon(Icons.tablet_mac),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    web(cmd, imagename);
                    //print(cmd);
                    //print(imagename);
                  }, 
                  child: Text('click here')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}