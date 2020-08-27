import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  @override
  void initState() {
    super.initState();
    print('someone came here');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('someone logoff from here');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () => print('pressed'),
            child: Text('press'),
          )
        ],
      ),
    );
  }
}