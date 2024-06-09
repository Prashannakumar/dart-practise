//lambdas
void main(List<String> args) {
//   var cart = Cart();
//   print("Your total price is:");
//   print(cart.addingTwoItems(120, 458));
//   print(cart.outReturnPolicy("Please read our return policy"));
//   print(cart.returnUpdateCustomer("Your item has been shipped"));

// ///////////higher-order functions///////////
//   var result = DividingByFour();
//   print(result(56));

// /**
//  * closure
//  */
//   print(message);
//   overridingParentScope();

//   String path = "This is an old path";
//   var showing = show();
//   showing();

  var add = AboutLambdas();
  var addition = add.addingNumbers(5, 10);
  print(addition);
  var mul = AboutLambdas();
  var result = mul.multiplyWithEight(4);
  print(result);
  var name = AboutLambdas();
  var myName = name.showName("Sanjib");
  print(myName);
  var higher = AboutLambdas();
  var higherOrder = higher.higherOrderFunction(add.addingNumbers);
  higherOrder;
  var showAge = AboutLambdas();
  var showingAge = showAge.returningAFunction();
  print(showingAge(25));
  var sayMessage = AboutLambdas();
  sayMessage.overridingParentScope();
  var image = AboutLambdas();
  String path = "This is an old path.";
  var imagePath = image.show();
  imagePath();
}

class Cart {
  Function addingTwoItems = (int item1, int item2) {
    var sum = item1 + item2;
    return sum;
  };

  Function outReturnPolicy = (String messageToCustomer) {
    return messageToCustomer;
  };

  var returnUpdateCustomer = (String updateCustomer) => updateCustomer;
}

///////////higher-order functions///////////
Function DividingByFour() {
  Function LetUsDivide = (int x) => x ~/ 4;
  return LetUsDivide;
}

/**
 * closure
 */

String message = "Any Parent String";
Function overridingParentScope = () {
  String message = "Overriding the parent scope";
  print(message);
};

Function show = () {
  String path = "This is a new path to image";
  Function gettingImage = () {
    // path = "This is a very new path to image";
    print(path);
  };
  return gettingImage;
};

class AboutLambdas {
  //first way of expressing Lambda or anonymous function
  Function addingNumbers = (int a, int b) {
    var sum = a + b;
    return sum;
  };
  Function multiplyWithEight = (int num) {
    return num * 8;
  };
  //second way of expressing Lambda by Fat Arrow
  Function showName = (String name) => name;

  //higher order functions pass function as parameter
  int higherOrderFunction(Function myFunction) {
    int a = 10;
    int b = 20;
    print(myFunction(a, b));

    return 0;
  }

  // returning a function
  Function returningAFunction() {
    Function showAge = (int age) => age;
    return showAge;
  }

  //a closure can modify the parent scope
  String anyString = "Any Parent String";
  Function overridingParentScope = () {
    String message = "Overriding the parent scope";
    print(message);
  };
  Function show = () {
    // the anonymous function will return this originally
    Function gettingImage() {
      // anonymous function returns a function
      String path = "This is a new path to image.";
      print(path);

      // Return an empty function to comply with the non-nullable return type
      return () {};
    }

    return gettingImage;
  };
}
