import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MySignup extends StatefulWidget {
  @override
  _MySignupState createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  var authc = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('signup'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  minWidth: 200,
                  height: 40,
                  onPressed: () async {
                    try {
                      var user = await authc.createUserWithEmailAndPassword(email: email, password: password);
                      print(user);
                      if (user.additionalUserInfo.isNewUser == true){
                        Navigator.pushNamed(context, "chat");
                      }
                    } catch(e) {
                      print(e);
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}