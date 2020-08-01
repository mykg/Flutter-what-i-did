void main(){
  /*var h = (a, b) {
    return a + b;
  };*/

  var h = (a, b) => a + b; // => fat arrow and lambda expression
  print(h(2,6));

  Function p = () => print("hi");
  p();
}