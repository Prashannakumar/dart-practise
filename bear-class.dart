class Bear {
  late int numberOfFish;
  late int hoursOfSleep;
  late int weightGain;

  // Bear({required this.hoursOfSleep, required this.numberOfFish, required this.weightGain});

  int eatFish() {
    return numberOfFish;
  }

  int sleepAfterEatingFish() {
    return hoursOfSleep;
  }

  int weightGaining() {
    weightGain = numberOfFish * hoursOfSleep;
    return weightGain;
  }
}

class BearTracking {
  //reference variable
  int collarID;

  //default and parameterized constructor
  BearTracking(this.collarID);

  //first named constructor
  BearTracking.firstNamedConstructor(this.collarID);
  
  //second named constructor
  BearTracking.secondNamedConstructor(this.collarID);

  void trackingBear(){
    String? color; //local variable
    print("Tracking the bear with collar ID $collarID, color is $color");
  }

}