void main(List<String> args) {
  // Destruction of Collections
  var list = [1, 2, 3, 4];
  final [int a, int b, int c, int d] = list;
  print("Destruction of List");
  print("Value of a : $a");
  print("Value of b : $b");
  print("Value of c : $c");
  print("Value of d : $d");

  var map = {"width": 10, "height": 20, "depth": 50};
  final {"width": int width, "height": int height} = map;
  print("Destruction of Map");
  print("Value of width : $width");
  print("Value of height : $height");

  // Record
  var recordWithoutVarName = (1, 2, 3, 4);
  final (int first, int second, int _, int _) = recordWithoutVarName;
  print("Destruction of Record without variable name");
  print("Value of first : $first");
  print("Value of second : $second");

  var recordWithName = (x: 10, y: 20, z: 30);
  final (x: int x, y: int y, z: int _) = recordWithName;
  print("Destruction of Record with variable name");
  print("Value of x : $x");
  print("Value of y : $y");

  // Custom Objects
  var person = Person("Aung Aung", 20, 1);
  final Person(name: String name, age: int age) = person;
  print("Destruction of Custom Objects");
  print("Value of name : $name");
  print("Value of age : $age");

  // Destructions with wildcard
  const longList = [1, 2, 3, 4, 5, 6, 7];
  print("Destruction with wildcard");
  final [int firstValue, ..._, int lastValue] = longList;
  print("Value of firstValue : $firstValue");
  print("Value of lastValue : $lastValue");
}

class Person {
  final String name;
  final int age;
  final int grade;
  const Person(this.name, this.age, this.grade);
}
