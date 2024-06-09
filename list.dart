void main(List<String> args) {
  var list = [];
  // = []; or
  // = <int>[]; or
  // = List.empty(growable: true); or
  // = List.filled(2, 0); --> Creates a list of length 2, filled with zeros
  list.add(3);
  list.add(4);
  print(list);

  // listFunction();
  growableList();
  // fibonacciNumbers();
}

listFunction() {
  var nameOfTest = List<int>.filled(3, 0);
  print(nameOfTest);
  nameOfTest[0] = 1;
  nameOfTest[1] = 2;
  nameOfTest[2] = 3;
  print(nameOfTest);

  // method 1
  for (int element in nameOfTest) {
    print(element);
  }

  //method 2
  nameOfTest.forEach((element) {
    print("$element");
  });

  //method 3
  for (int i = 0; i < nameOfTest.length; i++) {
    print("index $i value is ${nameOfTest[i]}");
  }
}

growableList() {
  List<String> names = List.empty(growable: true);
  names.add("Mana");
  names.add("Babu");
  names.add("Gopal");
  names.add("Iceman");
  // print(names);
  // print(names.remove("Babu"));
  // print(names);
  // print(names.removeAt(2));
  // print(names);
  // names.clear();
  // print({names, names.length});

  var mappedNames = names.map((name) => "Absconding $name").toList();
  print({mappedNames, mappedNames.runtimeType});
}

fibonacciNumbers() {
  var num1 = 1;
  var num2 = 1;
  var fibonacciNumbers = [];
  while (num2 < 50) {
    print(num2);
    fibonacciNumbers.add(num2);
    num2 += num1;
    num1 = num2 - num1;
  }
  print(fibonacciNumbers);
  print(fibonacciNumbers.take(3).toList());
  print(fibonacciNumbers.skip(2).contains(5));print(fibonacciNumbers);
  print(fibonacciNumbers.take(3).skip(2).take(1).toList());print(fibonacciNumbers);
  var clonedFibonacciNumbers = List.from(fibonacciNumbers);
  print("Cloned list: $clonedFibonacciNumbers");
}
