class InputException implements Exception {
  String customException() {
    return "The input of negative number is not valid.";
  }
}

void main(List<String> args) {
  // exceptionFun1();
  exceptionFun2();
}

exceptionFun1() {
  try {
    int result = 10 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("We cannot divide by zero");
  }

  try {
    int result = 10 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print({e, 'err'});
  }
  try {
    int result = 10 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The exception is: $e");
  } finally {
    print("This is finally and it always is executed.");
  }
}

exceptionFun2() {
  // ON Clause is used when the exception is known
  try {
    var res = 4 ~/ 0;
    print("The result: $res");
  } on IntegerDivisionByZeroException {
    print("You cannot divide by zero, the value is undefined");
  }

  // CATCH Clause is used when eception is unknown
  try {
    var res = 3 ~/ 0;
    print("The result: $res");
  } catch (e, s) {
    print("The exeption: $e");
    print("Stack trace is \n $s");
  }

  //FINALLY Clause is always Executed whether exeption is thrown or not
  try {
    int res = 9 ~/ 0;
    print("The result: $res");
  } catch (e) {
    print("The exeption: $e");
  } finally {
    print("The finally clause is always executed.");
  }

  //we can make our Custom Exeption by creating a class
  try {
    inputValue(-14);
  } catch (e) {
    print(e);
  } finally {
    print("The finally clause is always executed");
  }

  try {
    inputValue(-14);
  } on InputException catch (e) {
    print(e.customException());
  } finally {
    print("The finally clause is always executed");
  }
}

void inputValue(int inputNumber) {
  if (inputNumber < 0) {
    var inputException = InputException();
    throw inputException;
  }
}
