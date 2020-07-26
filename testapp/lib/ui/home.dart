import 'package:flutter/material.dart';

myapp(){
  var mytext = Text(
    'an app bar',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  mypress() {
    print("somethihg clicked"); 
  }

  var MyEmailIcon = Icon(Icons.email); 
  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress );

  var MyAlarmIcon = Icon(Icons.access_alarm);
  var MyAlarmButton = IconButton(icon: MyAlarmIcon, onPressed: mypress );

  var url = 'https://th.bing.com/th/id/OIP.J33vOB6FEHL79BWQ3hfskwHaJ4?pid=Api&rs=1';
  var MyImage = Image.network(
    url,
    height: double.infinity,
    width: double.infinity,
    );

  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.amber,
    leading: MyImage,
    actions: <Widget>[MyEmailButton, MyAlarmButton],

  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: MyImage,
    backgroundColor: Colors.grey,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}