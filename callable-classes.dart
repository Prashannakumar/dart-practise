void main(List<String> args) {
  var withoutArgument = CallableClassWithoutArgument();
  var withArgument = CallableClassWithArgument();

  withoutArgument(); //equivalent to `withoutArgument.call()`;
  print(withArgument("John"));
  print(withArgument.call("Calling John"));

  var John = Person();
  John.name = 'John';
  String name = John.name;
  String msgAndName = John("Hi John, how are you?", name);
  print(msgAndName);
}

class CallableClassWithoutArgument {
  String output = "Callable class";
  void call(){
    print(output);
  }
}

class CallableClassWithArgument {
  call(String name) => "$name";
}

class Person{
  var name;
  String call(String message, [name]){
    return "message: '$message', has passed to person $name";
  }
}