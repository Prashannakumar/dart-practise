class Animal {
  String name = "Animal";
  Animal() {
    print("I am Animal class constructor.");
  }

  Animal.namedConstructor() {
    print("This is parent animal named constructor.");
  }

  void showName() {
    print(this.name);
    print("Hi from ${this.name}");
  }

  void eat() {
    print("Animals eat everything depending on what type it is.");
  }
}

////////////// single inheritance //////////////
class Cat extends Animal with DogRun {
  //overriding parent constructor
  //although constructors are not inherited
  Cat() : super() {
    print("I am child cat class overriding super Animal class.");
  }

  Cat.namedConstructor() : super.namedConstructor() {
    print(
        "The child cat named constructor overrides the parent animal named constructor.");
  }

  @override //method overriding
  void showName() {
    print("Hi from cat.");
    print(this.name);
  }

  @override
  void eat() {
    super.eat();
    print("Cat doesn't eat vegetables..");
  }
}

class Cow extends Animal {
//overriding parent constructor
//although constructors are not inherited
  Cow() : super() {
    print("I am child cow class overriding super Animal class.");
  }
  Cow.namedCatConstructor() {
    print(
        "The child cow named constructor overrides the parent animal named constructor.");
  }

  @override
  void showName() {
    print("Hi from cow.");
    print(this.name);
  }

  @override
  void eat() {
    super.eat();
    print("Cow does eat grass..");
  }
}

////////////// multilevel inheritance //////////////
class Dog extends Animal {
  //overriding parent constructor although constructor are not inherited
  Dog() : super() {
    print("I am child class dog overriding super Animal class.");
  }
  Dog.namedDogConstructor() : super.namedConstructor() {
    print(
        "The child dog named construcotr overrides the parent animal named constructor");
  }
  Dog.anotherNamedConstructor() {
    print("This is parent Dog named constructor");
  }

  @override
  void showName() {
    print("Hi from parent dog.");
    print(this.name);
  }

  @override
  void eat() {
    super.eat();
    print("Dog doesn't eat vegetables..");
  }
}

mixin class DogRun {
  void canRun() {
    print("I can run");
  }
}

class PuppyDog extends Dog {
  //overriding parent constructor although construcotrs are not inherited
  PuppyDog() : super() {
    print(
        "I am child class puppy dog overriding my immediate parent Dog class.");
  }
  PuppyDog.namedDogConstructor() : super.anotherNamedConstructor() {
    print(
        "The child puppy dog named constructor overrides the parent DOg another named constructor.");
  }

  @override
  void showName() {
    print("Hi from Puppy dog.");
    print(this.name);
  }

  @override
  void eat() {
    super.eat();
    print("Puppy Dog eats milk only...");
  }
}

////////////// abstract class //////////////

abstract class volume {
  late int age;
  void increase();
  void decrease();
  void anyNormalFunction(int age) {
    print("This is a normal function to know the $age");
  }
}

class soundSystem extends volume {
  void increase() {
    print("Sound is up.");
  }

  void decrease() {
    print("Sound is down.");
  }

  void anyNormalFunction(int age) {
    print(
        "This is a normal function to know how old the sound system is: $age.");
  }
}

abstract class Mammal{
  void run();
  void walk();
  void sound(){
    print("Mammals make sound");
  }
}

class Human implements Mammal{
  void run(){
    print("I am running");
  }
  void walk(){
    print("I am walking");
  }
  void sound(){
    print("Humans make sound");
  }
}

void main(List<String> args) {
  // var cow = Cow();
  // cow.name = "Daisy";
  // cow.showName();

  // var cat = Cat();
  // cat.name = "Meaow";
  // cat.showName();
  // cat.eat();

  // var anotherCat = Cat.namedConstructor();
  // anotherCat.canRun();

  ////////////////multilevel inheritance/////////////////
  // var animal = Animal();
  // animal.name = "Cow";
  // animal.showName();

  // var dog = Dog();
  // dog.name = "Lucky";
  // dog.showName();
  // dog.eat();
  // var anotherDog = Dog.namedDogConstructor();

  // var puppy = PuppyDog();
  // puppy.name = "I am offspring of lucky";
  // puppy.showName();
  // puppy.eat();
  // var anotherPuppy = PuppyDog.namedDogConstructor();

////////////// abstract class //////////////
  // var newSystem = soundSystem();
  // newSystem.increase();
  // newSystem.decrease();
  // newSystem.anyNormalFunction(10);

  var John = Human();
  print("John says: ");
  John.run();
  print("John says: ");
  John.walk();
  print("John makes no sound.");
  John.sound();
}
