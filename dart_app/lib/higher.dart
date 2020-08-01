main() {

  Function myfunction = (text) => text.length;

  mylen(
    word: "mynk", 
    myfun: myfunction,
  );
}

mylen({String word, Function myfun}){ // higher order function
  print(word);
  print(myfun(word));
}