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
