import 'bear-class.dart';
import 'car-class.dart';

void main(List<String> args) {
  var newCar = new car(carModel: 256, carName: 'Ferrari');
  // newCar._isOn = true;
  newCar.turnOn(true); //it is calling the method
  newCar.isTurnedOn = true; //it is by set method

  if (newCar.isTurnedOn) {
    print("${newCar.carName} starts. It has model number ${newCar.carModel}.");
  } else {
    print("${newCar.carName} stops. It has model number ${newCar.carModel}.");
  }

  // bearFun();
  // urlFun();
  // getSetFun();
  bearTrackingFun();
}

bearFun() {
  var fatherBear = Bear();
  fatherBear.numberOfFish = 7;
  fatherBear.hoursOfSleep = 20;

  print(
      "Father bear eats ${fatherBear.eatFish()} fishes. And he sleeps for ${fatherBear.sleepAfterEatingFish()} hours.");
  print(
      "Father bear has gained ${fatherBear.weightGaining()} pounds of weight.");
}

class CheckHTTPS {
  String url;
  CheckHTTPS(this.url);

  bool checkURL() {
    if (this.url.contains("https")) {
      return true;
    } else
      return false;
  }
}

urlFun() {
  var newUrl = CheckHTTPS('https://aarkal.com');
  var url2 = CheckHTTPS('hello.com');
  if (!newUrl.checkURL()) {
    print("The URL ${newUrl.url} is not secured");
  } else
    print("The URL ${newUrl.url} is secured");

  // print(url3);
  // var url3 = '';
  if (!url2.checkURL()) {
    // var url3 = '';
    print("The URL ${url2.url} is not secured");
  } else
    print("The URL ${url2.url} is secured");
}

// getter and setter

class myClass {
  late String name;
  String get getName => name;
  set setName(String nameValue) => name = nameValue;
}

getSetFun(){
  var myObject = myClass();
  myObject.setName = "Sanjib";
  print(myObject.getName);
}

bearTrackingFun(){
  //bear1 is reference variable
  // BearTracking() is object
  var bear1 = BearTracking(1);
  bear1.trackingBear();

  var bear2 = BearTracking.firstNamedConstructor(2);
  bear2.trackingBear();

  var bear3 = BearTracking.secondNamedConstructor(3);
  bear3.trackingBear();
}