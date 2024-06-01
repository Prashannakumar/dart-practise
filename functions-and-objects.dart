void main(List<String> args) {
  isTrue();
  isFalse();
  myName();
  withoutReturning();
  var integerReturn = integerReturnFun();
  print("We return an integer: $integerReturn");
  print(stringReturn('John', "Jericho Town"));
  print(getRecurse(5));
}

void isTrue() {
  print("It is true");
}

isFalse() {
  print("It is false");
}

myName() {
  print("My name is John");
  myAge(12);
}

myAge(int age) {
  print("My age is $age");
}

void withoutReturning() {
  print("We cannot return from this function");
  // return 1;
}

int integerReturnFun() {
  int num = 10;
  return num;
}

//fat arrow
String stringReturn(String name, String address) =>
    "This is $name and this is $address and we have used fat arrow method.";

int getRecurse(int num) {print(num);
  if (num > 1) {
    int res = num * getRecurse(num - 1);
    print("In getRecurse and num is $num and response is $res");
    return res;
  } else
    return 1;
}
