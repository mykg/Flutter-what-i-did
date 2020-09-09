import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  var msgtextcontroller = TextEditingController();

  var fs = FirebaseFirestore.instance;
  var authc = FirebaseAuth.instance;

  String chatmsg;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var signInUser = authc.currentUser.email;

    return Scaffold(
        appBar: AppBar(
          title: Text('chat'),
        ),
        body: Container(
          child: SingleChildScrollView(
              child: Column(
              children: <Widget>[
                StreamBuilder<QuerySnapshot>(
                  builder: (context, snapshot) {
                    print('new data comes');

                    var msg = snapshot.data.docs;
                    // print(msg);
                    // print(msg[0].data());

                    List<Widget> y = [];
                    for (var d in msg) {
                      // print(d.data()['sender']);
                      var msgText = d.data()['text'];
                      var msgSender = d.data()['sender'];
                      var msgWidget = Text("$msgText : $msgSender");

                      y.add(msgWidget);
                    }

                    print(y);

                    return Container(
                      child: Column(
                        children: y,
                      ),
                    );
                  },
                  stream: fs.collection("chat").snapshots(),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: deviceWidth * 0.70,
                      child: TextField(
                        controller: msgtextcontroller,
                        decoration: InputDecoration(hintText: 'Enter msg ..'),
                        onChanged: (value) {
                          chatmsg = value;
                        },
                      ),
                    ),
                    Container(
                      width: deviceWidth * 0.20,
                      child: FlatButton(
                        child: Text('send'),
                        onPressed: () async {
                          msgtextcontroller.clear();

                          await fs.collection("chat").add({
                            "text": chatmsg,
                            "sender": signInUser,
                          });
                          print(signInUser);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}




/*
class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
  
  
}

class _MyChatState extends State<MyChat> {
  
  String msg;
  var fs = FirebaseFirestore.instance;

  getmsglive() async {
    await for (var ss in fs.collection("chat").snapshots()){
      for (var doc in ss.docs) {
        print(doc.data());
      }
    }
  }

  @override
  void initState() {
    print('landed');
    super.initState();
  }
  var authc = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.close), 
            onPressed: () async {
            print('sign out');
            await authc.signOut();
            Navigator.pushNamedAndRemoveUntil(context, "home", (route) => false);
          })
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              msg = value;
            },
          ),
          FlatButton(
            onPressed: () async {
              await fs.collection('chat').add({
                "text": msg,
                "sender": authc.currentUser.email,
              });
            }, 
            child: Text('send msg')
          ),
          FlatButton(
            onPressed: () async {
              var msgdoc = await fs.collection('chat').get();
              //print(msgdoc.docs[0].data());
              for (var i in msgdoc.docs) {
                print(i.data());
              }
            }, 
            child: Text('get msg')
          ),
          FlatButton(
            onPressed: () {
              getmsglive();
            },
            child: Text('get stream chat')
          ),
          RaisedButton(
            onPressed: () {
              var user = authc.currentUser;
              print(user.email);
            },
            child: Text('whoami'),
          ),
        ],
      ),
    );
  }
}
*/