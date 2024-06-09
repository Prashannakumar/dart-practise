class Circle {
  //static variables and methods consume less memory
  //they are lazily initialized
  static const pi = 3.14;

  static void drawCircle() {
    //from static method you cannot call a normal function
    print(pi);
    // aNonStaticFunction()
  }

  void aNonStaticFunction(){
    //from a normal function or method you can call a static method
    Circle.drawCircle();
    print("This is normal function.");
  }
}

void main(List<String> args) {
  var circle = Circle();
  circle.aNonStaticFunction();
  Circle.drawCircle();
  print(Circle.pi);
}
