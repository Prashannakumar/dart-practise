void main(List<String> args) {
  // ifElseFun();
  // boolFun();
  // ifElseFun2();
  // conditionalExp();
  // loopFun();
  // labelsLoop();
  // loopContinue();
  switchCase();
}

ifElseFun() {
  bool firstButtonTouch = true;
  var firstButtonUntouch;
  bool secondButtonTouch = false;
  bool thirdButtonTouch = true;
  bool fourthButtonTouch = false;

  firstButtonUntouch ??= firstButtonTouch; //"??=" Assignment Operator
  // firstButtonUntouch = false;
  print(firstButtonUntouch);
  if (firstButtonTouch)
    print("The giant starts running.");
  else
    print("To stop the giant please touch the second button.");

  if (secondButtonTouch)
    print("The giant stops.");
  else
    print("You have not touched the second button.");
  print("Touch any button to start the game.");
  if (thirdButtonTouch)
    print("The giant goes to sleep.");
  else
    print("You have not touched any button.");
  if (fourthButtonTouch)
    print("The giant wakes up.");
  else
    print("You have not touched any button.");
  print('..................');
  if (firstButtonUntouch == false || firstButtonTouch == true)
    print("The giant is sleeping.");
  else
    print("You need to wake up the giant. Touch the first button.");
  if (firstButtonTouch == true && firstButtonUntouch == false)
    print("The giant starts running.");
  print("To stop the giant please touch the second button.");
  if ((secondButtonTouch == true && thirdButtonTouch == true) ||
      fourthButtonTouch == false)
    print("The giant stops.");
  else
    print("You have not touched the second button.");
  print("Touch any button to start the game.");
  if (thirdButtonTouch)
    print("The giant goes to sleep.");
  else
    print("You have not touched any button.");
  if (fourthButtonTouch)
    print("The giant wakes up.");
  else
    print("You have not touched any button.");
}

boolFun() {
  bool statementOne = false;
  bool statementTwo = false;

  // if(statementOne && statementTwo){
  //   print("$statementOne and $statementTwo");
  // }

  if (statementOne || statementTwo) {
    print("$statementOne or $statementTwo");
  }
}

ifElseFun2() {
  bool firstButtonTouch = true;
  var firstButtonUntouch;
  bool secondButtonTouch = false;
  bool thirdButtonTouch = true;
  bool fourthButtonTouch = false;
  firstButtonUntouch ??= firstButtonTouch;
  firstButtonUntouch = false;

  if (firstButtonUntouch == false || firstButtonTouch == true)
    print("The giant is sleeping.");
  else if (thirdButtonTouch)
    print("You need to wake up the giant. Touch the first button.");
  else if (firstButtonTouch == true && firstButtonUntouch == false)
    print("The giant starts running.");
  else if (secondButtonTouch)
    print("To stop the giant please touch the second button.");
  else if ((secondButtonTouch == true && thirdButtonTouch == true) ||
      fourthButtonTouch == false)
    print("The giant stops.");
  else if (thirdButtonTouch)
    print("You have not touched the second button.");
  else if (secondButtonTouch)
    print("Touch any button to start the game.");
  else if (thirdButtonTouch)
    print("The giant goes to sleep.");
  else if (firstButtonUntouch) print("You have not touched any button.");
  if (fourthButtonTouch)
    print("The giant wakes up.");
  else
    print("You have not touched any button.");
}

conditionalExp() {
  var num1 = null;
  int num2 = 30;

  // int smallNum = num1 < num2 ? num1: num2;
  // print(smallNum);

  int numx = num1 ?? num2;
  print(numx);
}

loopFun() {
  var proverb = StringBuffer("As Dark as a Dungeon.");

  for (var x = 0; x <= 10; x++) {
    proverb.write('!');
    print(proverb);
  }

  Set mySet = {1, 2, 3};
  var myProducts = {1: 'TV', 2: "Mobile", 3: 'PC'};
  var userCollection = {'name': "John", 'email': 'john@123.site'};

  mySet.forEach((element) {
    print("$element");
  });
  myProducts.forEach((key, value) {
    print("$key: $value");
  });
  userCollection.forEach((x, y) => print("${x}: ${y}"));

  var myCollection = [1, 2, 3, 4];

  for (var x in myCollection) {
    print("${x}");
  }

  int x = 0;
  while (x < 10) {
    print("$x, 'while'");
    x++;
  }

  var num = 5;
  var factorial = 1;
  print("The value of the variable 'num' is decreasing this way:");

  while (num >= 1) {
    factorial = factorial * num;
    num--;
    print("'=>' ${num}");
  }
  print("The factorial is ${factorial}, while");

  num = 5;
  factorial = 1;
  do {
    factorial = factorial * num;
    num--;
    print("The value of the variable 'num' is decreasing to : ${num}");
    print("The factorial is ${factorial}, do-while");
  } while (num >= 1);
}

labelsLoop() {
  outerLoop:
  for (var x = 1; x <= 3; x++) {
    print(
        "One cycle of outerloop with $x starts and the whole innerloop runs.");

    innerLoop:
    for (var y = 1; y <= 3; y++) {
      if (x == 1 && y == 1) {
        print(
            "Since outerloop $x and innerloop $y both are 1, it gives no output");
        break innerLoop;
      }
      print(y);
    }
    print("One cycle of outerloop ends with $x");
  }
}

void loopContinue() {
  for (var num = 1; num <= 5; num++) {
    if (num % 2 == 0) {
      print("These are all even numbers. $num");
      continue;
    }
    print("These are all odd numbers. $num");
  }
}

void switchCase() {
  var startingTime = 5;
  switch (startingTime) {
    case 5:
      print("Printer Ready");
      break;
    case 6:
      print("Start Printing");
    case 7:
      print("Stop for a second");
    default:
      print("Default ${startingTime}");
  }
}
