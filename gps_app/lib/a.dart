import 'package:http/http.dart' as http;

void main() {
  alltasks();
}

alltasks(){
  task1();
  task2();
  task3();
}

task1(){
  print("this is task 1 for app bar");
}

task2() async {
  var url = 'http://192.168.99.101/cgi-bin/date.py';
  var r = await http.get(url);
  print(r.body); 
}

task3(){
  print("this is task 3 for button login");
}