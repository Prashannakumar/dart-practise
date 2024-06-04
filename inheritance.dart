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

class Cat extends Animal {
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

void main(List<String> args) {
  var cow = Cow();
  cow.name = "Daisy";
  cow.showName();

  var cat = Cat();
  cat.name = "Meaow";
  cat.showName();
  cat.eat();

  var anotherCat = Cat.namedConstructor();
}
