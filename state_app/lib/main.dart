import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyAppState(),));

class MyAppState extends StatefulWidget {
  @override
  _MyAppStateState createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {

  var db = ['first', 'second', 'third'];
  var index = 0;
  click(){
    setState(() {
      index += 1;
    });
    print("clicked...");
    print("Index Changed");
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AppBAR'),
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8 ,
            height: MediaQuery.of(context).size.height * 0.4,
            color: Colors.transparent,
            child: Column(
              children: <Widget>[
                Text(db[index % db.length]),
                FlatButton(onPressed: click, child: Text('click here')),
              ],
            ),
          ),
        ),
      );
  }
}