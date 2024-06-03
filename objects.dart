// void main(List<String> args) {
//   var newCar = new Car();
//   newCar.carName = "Red Angel";
//   newCar.carModel = 256;
//   newCar.turnedOn(false);

//   if (newCar.isTurnedOn()) {
//     print("${newCar.carName} starts. It has model number ${newCar.carModel}");
//   } else {
//     print("${newCar.carName} stops. It has model number ${newCar.carModel}");
//   }
// }

// class Car {
//   int carModel = 123;
//   String carName = "Blue Angel";
//   bool isOn = true;

//   void turnedOn(bool turnOn) {
//     isOn = turnOn;
//   }

//   bool isTurnedOn() {
//     return isOn;
//   }
// }

class Car {
  int carModel;
  String carName;
  bool _isOn = true;

  Car({required this.carModel, required this.carName});

  void turnOn(bool turnOn) {
    // Additional logic can be added here
    if (turnOn) {
      print("The car is being turned on.");
    } else {
      print("The car is being turned off.");
    }
    _isOn = turnOn;
  }

  bool get isTurnedOn => _isOn;
}

void main(List<String> args) {
  var newCar = Car(carName: "Red Angel", carModel: 256);
  // newCar.turnOn(false);
  newCar._isOn = false;

  if (newCar.isTurnedOn) {
    print("${newCar.carName} starts. It has model number ${newCar.carModel}");
  } else {
    print("${newCar.carName} stops. It has model number ${newCar.carModel}");
  }

  var newCar1 = Car(carName: "Red Angel", carModel: 256);
  // newCar1.turnOn(false);

  if (newCar1.isTurnedOn) {
    print("${newCar1.carName} starts. It has model number ${newCar1.carModel}");
  } else {
    print("${newCar1.carName} stops. It has model number ${newCar1.carModel}");
  }
}
