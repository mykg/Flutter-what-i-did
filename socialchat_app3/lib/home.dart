import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Colors.lightBlueAccent,
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  minWidth: 200,
                  height: 40,
                  onPressed: () {
                    Navigator.pushNamed(context, "signup");
                  },
                  child: Text('SignUP'),
                ),
              ),
              SizedBox(height: 10,),
              Material(
                color: Colors.lightBlueAccent,
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  minWidth: 200,
                  height: 40,
                  onPressed: () {
                    Navigator.pushNamed(context, "login");
                  },
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}