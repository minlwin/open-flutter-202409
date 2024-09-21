class Animal {}

class Dog extends Animal {}

void main(List<String> args) {
  var animals = <Animal>[];
  var dogs = <Dog>[];

  animals = dogs;

  animals.add(Animal());
}
