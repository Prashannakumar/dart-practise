// //default parameters
// String defaultParameters(String name, String address, {int age = 10}){
//   return "$name and $address and $age";
// }

// // optional parameters
// String optionalParameters(String name, String address, [int? age]){
//   return "$name and $address and $age";
// }

// void main(List<String> args) {
//   print(defaultParameters("john", "jericho"));
//   print(optionalParameters('Henry', 'Delhi'));
//   //overriding default age
//   print(defaultParameters('John', "Jericho", age: 20));
// }

////////////////////////////////////////////////////////////////

//positional parameters -- required
void greet(String name, int age){
  print("Hello $name, you are $age years old.");
}

//positional parameters -- optional
void greet1(String name, [int? age]){
  if(age != null)
  print("Hello $name, you are $age years old.");
  else print("Hello $name");
}

//named parameters -- optional
void greet2({String? name, int? age}){
  if(name != null && age != null){
    print("Hello $name, you are $age years old.");
  }else if(name != null){
    print("Hello $name");
  }else{
    print("Hello!");
  }
}

//named parameters -- required
void greet3({required String name, required int age}){
  print("Hello $name, you are $age years old.");
}

//default values -- positional
void greet4(String name, [int age = 18]){
print("Hello $name, you are $age years old.");
}

//default values -- named
void greet5({String name = "Guest", int age = 18}){
  print("Hello $name, you are $age years old.");
}

//positional -- optional -- named
void greet6(String title, String name, {int? age, String suffix = ""}){
  String greeting = "Hello $title $name";

  if(age != null){
    greeting += ", you are $age years old";
  }
  if(suffix.isNotEmpty){
    greeting += " $suffix";
  }
  print(greeting);
}

void main(){
  greet("alice", 30);

  greet1("bob");
  greet1("bob", 30);

  greet2(name: 'Charles', age: 5);
  greet2(age: 8);
  greet2();

  greet3(name: 'Maverick', age: 25);

  greet4('Iceman');
  greet4("Iceman", 80);

  greet5();
  greet5(name: 'Cruger');
  greet5(age: 44);
  greet5(name: 'Ven', age: 90);

  greet6('Mr', "Smith");
  greet6('Dr.', "Jones", age: 22);
  greet6("Ms.", 'Taylor', suffix: "Phd");
  greet6("Prof.", 'Brown', age: 35, suffix: "MD");
}