import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}
bool spin = false;
class _MyLoginState extends State<MyLogin> {
  var authc = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: ModalProgressHUD(
          inAsyncCall: spin,
          child: Center(
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
                      setState(() {
                        spin = true;
                      });
                      try {
                        var usersignin = await authc.signInWithEmailAndPassword(email: email, password: password);
                        print(usersignin);
                        if(usersignin != null) {
                          Navigator.pushNamed(context, "chat");   
                          setState(() {
                            spin = false;
                          });
                        }                   
                      } catch(e) {
                        print(e);
                      }
                    },
                    child: Text('Login'),
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