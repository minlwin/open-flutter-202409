library;

base class Animal {
  final String species;

  Animal(this.species);
}

base class Dog extends Animal with ColorEnable {
  Dog(super.species, this.color);

  @override
  String color;
}

base class OtherAnimal implements Animal {
  @override
  final String species;

  OtherAnimal(this.species);
}

base mixin ColorEnable {
  abstract String color;
}

base class Others implements ColorEnable {
  @override
  String color = "White";
}
