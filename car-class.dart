class car {
  int carModel;
  String carName;
  bool _isOn = false; //private variable

  car({required this.carModel, required this.carName});
  void turnOn(bool turnOn) {
    _isOn = turnOn;
  }

  //getter for _isOn
  bool get isTurnedOn => _isOn;

  //setter for _isOn
  set isTurnedOn(bool value) {
    //additional logic can be added here
    _isOn = value;
  }
}
