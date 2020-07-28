import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp1() {
  myprint(){
    print("u clicked on nezuko");
  }
  mytoast(){
    Fluttertoast.showToast(
        msg: "for camera kk",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade400,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
         Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.grey,
              width: 3
            ),
          ),
          margin: EdgeInsets.all(50),
          //padding: EdgeInsets.all(10),
          //padding: EdgeInsets.only(left: 30),
          alignment: Alignment.center,
           width: 350,
           height: 200,
           //color: Colors.amber,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              Text(
                "Nezuko Chan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text("  nezukochan@demon.mail.com"),
                ],
              ),
           ],),
         ),
         GestureDetector(
            onLongPress: myprint, 
            //onTap: myprint,
            //onDoubleTap: myprint,
            child: Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: NetworkImage(
                   'https://i.pinimg.com/564x/f3/fc/1f/f3fc1f82fd5d884c111d13853fbb1527.jpg',
                 ),
                 fit: BoxFit.cover,
                ),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.amber,
                width: 3,
              ),
             ),
             padding: EdgeInsets.all(10),
             width: 100,
             height: 100,
             //color: Colors.green,
             //child: Text('second'),
           ),
         ),
         
      ],
    ),
  );

  var myhome = Scaffold(
    appBar: AppBar(
      title: Text('Bar'),
      backgroundColor: Colors.amber,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.add_a_photo), onPressed: mytoast),
        IconButton(icon: Icon(Icons.add_alarm), onPressed: null),
      ],
    ),
    body: mybody,
  );
  
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myhome,
    );
}