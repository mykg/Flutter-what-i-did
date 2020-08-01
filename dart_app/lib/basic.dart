void main(){
  // print("hello");
  //fun1("mynk","IN");
  //var x = fun1("mynk","IN");
  //print(x);
  fun2(name: "mynk", country: "IN");
}

int fun1( String name, String country){ // String fun_name
  // string interpolation
  // print("hellow " + i);
  // print("hello name is $name from country $country");
  // print("length of name is ${name.length}");
  return (name.length);
}

fun2({String name = "NA", String country = "NA"}){ // named parameter // default parameter
  print("name is $name and country is $country");
}