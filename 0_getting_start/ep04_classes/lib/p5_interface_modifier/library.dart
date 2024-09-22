interface class Animal {
  final String species;

  Animal(this.species);
}

class Dog extends Animal {
  Dog(super.species);
}

class OtherAnimal implements Animal {
  @override
  String get species => "Others";
}
