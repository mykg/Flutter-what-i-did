import 'package:flutter/material.dart';

class MyDB extends StatelessWidget {

  List<String> students = ["stud1", "stud2", "stud3", "stud4", "stud5", "stud6", "sdd", "fes", "ger", "rger", "eggtr", "fseef", "wdew",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DB Page'),
      ),
      body: /*Column(
        children: <Widget>[
          Text('This is DB page'),
          RaisedButton(
            child: Text('press for home'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ]
      ),*/
        ListView.builder(
          itemCount: students.length,
          itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
                title: Text(students[index]),
                subtitle: Text('id of student'),
                //leading: Icon(Icons.accessibility),
                leading: CircleAvatar(
                  child: Text('HI'),
                  radius: 25,
                ),
                trailing: RaisedButton(
                  child: Text('---'),
                  onPressed: () => print('pressed'),
                  ),
              )
            );
          })
      );
  }
}