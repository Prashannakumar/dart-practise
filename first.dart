main() {
  print('hello world');
  // calling a function
  doSomething();

  dynamic myNumber;
  print({myNumber, 'ffffff'});

  // stringFun();
  // numberFun();
  // listFUn([]);
  // setFun();
  // mapFun();
  // operatorsFun();
  // typeTestFun();
  assignmentOpFun();
}

doSomething() {
  print('do something');
  // calling a function inside another function
  lifeIsShort();
}

// defining another Function
lifeIsShort() {
  print("life is too short to do so many things.");
}

stringFun() {
  dynamic str = 'Hello John Smith';
  var isFalse = true;
  if (str == null) {
    print("It is ${isFalse}");
  } else
    print("It is not ${!isFalse}");

  const firstName = "Snajib";
  final lastName = "Sinha";
  // String firstName = "john";
  // String lastName = "Sinha";
  print({firstName, lastName});
}

numberFun() {
  var one = int.parse('1');
  print(one);
  if (one.isOdd) {
    print("It is an odd number.");
  } else
    print("It is an even number");

  one = int.parse('1');
  var doubleToString = double.parse('23.564');
  print(one);
  print(doubleToString);
  if (one.isOdd && doubleToString.isFinite) {
    print(
        "the first numbe is an odd number and the second one is a double ${doubleToString} and a finite number.");
  } else
    print(
        "It is an even number and the second one is not a double ${doubleToString} and a non-finite number.");

  String bengaliString = "বাংলা লেখা";
  String englishString = "This is some English text.";
  print(
      "Here is some Bengali script - ${bengaliString} and some English script ${englishString}");
  String stringWithSingleQuote = 'I\'m a single quote';
  String stringWithDoubleQuote = "I'm a double quote.";
  print(
      "Using delimiter in single quote - ${stringWithSingleQuote} and using delimiter in double quote - ${stringWithDoubleQuote}");
  print("$stringWithDoubleQuote");
  print(stringWithSingleQuote);

  String stringInterpolation = 'string' + 'concatenation';
  print(stringInterpolation);
  String multiLine = """this is
  a multi line
  string""";
  print(multiLine);

  //code 1.23
  const aConstInt = 12;
  const aConstBoolean = true;
  const aConstStr = "I am a constant string";

  const aValidConstStr =
      "this is a constant integer: ${aConstInt}, a const boolean: ${aConstBoolean}, a constant string: ${aConstStr}";
  print("output is: $aValidConstStr");
}

listFUn(List<String> arguments) {
  print(arguments);
  List fruitCollection = ['mango', 'apple', 'bananna'];
  var myIntegers = [1, 2, 3, 'mango'];
  print(fruitCollection[1]);
  print(myIntegers[3]);
}

setFun() {
  var fruitCollection = {'mango', 'apple', 'bananna'};
  print(fruitCollection.lookup('apple'));
  print(fruitCollection.lookup('object'));

  //map
  var map = {};
  if (map.isEmpty) {
    print('It is a map that has no key, value pair.');
  } else {
    print("it is a set that has no key, value pair.");
  }
}

mapFun() {
  var myProducts = {'first': 'tv', 'second': 'mobile', 'third': 'tablet'};
  print({myProducts, myProducts['second'], myProducts['secondd']});

  var myProducts1 = {1: 'tv', 2: 'mobile', 3: 'tablet'};
  print({myProducts1, myProducts1[2], myProducts1['2']});

  var myProducts2 = {'first': 'tv', 2: 'mobile', 3: 'tablet'};
  print({myProducts2, myProducts2[2], myProducts2['first']});

  Set mySet = {1, 2, 3};
  var setInMap = {1: 'tv', 2: 'mobile', 3: mySet.lookup(2), 4: 'PC'};
  print(setInMap[3]);

  var mapConstructor = Map();
  mapConstructor['first'] = 'tv';
  mapConstructor[2] = 'mobile';
  if (mapConstructor.containsValue('tv'))
    print("our product list has ${mapConstructor[2]}");
}

operatorsFun() {
  int aNum = 12;
  double aDouble = 2.25;
  var theResult = aNum ~/ aDouble;
  var res = aNum / aDouble;
  print({theResult, res});

  aNum++;
  ++aNum;
  int anotherNum = aNum + 1;
  print(anotherNum);

  int num1 = 20;
  int num2 = 21;
  if (num1 == num2) {
    print("${num1} is equal to ${num2}");
  } else if (num1 != num2) {
    print("${num1} is not equal to ${num2}");
  }

  int firstNum = 40;
  int secondNum = 40;
  int thirdNum = 74;
  int fourthNum = 56;
  if (firstNum == secondNum || thirdNum == fourthNum) {
    print("""If choice between 'true' or 'false', the 'true' gets
the precedence.""");
  } else
    print("""If choice between 'true' or 'false', the
'false' gets the precedence.""");

  if (firstNum == secondNum && thirdNum == fourthNum) {
    print(
        "If choice between 'true' and 'false', in this case the 'true' gets the precedence.");
  } else {
    print(
        "If choice between 'true' and 'false', in this case the 'false' gets the precedence.");
  }

  int anum1 = 35;
  if (!(anum1 != 150) && anum1 <= 150) {
    print("it is true");
  } else
    print("it is false");

  if (!(anum1 != 150) || anum1 <= 150) {
    print("it is true");
  } else
    print("it is false");
}

typeTestFun() {
  int myNum = 13;
  bool myBool = true;
  print(myNum is int);
  print(myNum is! int);
  print(myBool is bool);
  print(myBool is! bool);
}

assignmentOpFun() {
  int num1 = 10;
  var num2;
  if (num1 == 10) print("num1 is set to ${num1}");
  if (num2 == null) print("num2 is null");
  num2 ??= num1;
  print(num2);

  int firstNum = 10;
  var secondNum = null;
  if (firstNum == 10) print("The value of ${firstNum} is set.");
  if (secondNum == null) print("It is true.");
  secondNum ??= firstNum;
  print({secondNum, 'secondNum'});
  print("After using an assignment operator, the value changes.");
  secondNum += secondNum;
  print(secondNum);
  print("After using an assignment operator, the value changes again.");
  secondNum -= secondNum;
  print(secondNum);
  if (secondNum == null)
    print("It is true.");
  else
    print(
        "it is false, because the 'secondNUm' has the value of ${secondNum} now.");

  const x = 4;
  final y;
  // x = 1;
  y = 2;
  print({x, y});
}
