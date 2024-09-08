typedef Student = ({int id, String name, int age});

const students = [
  (id: 1, name: "Aung Aung", age: 20),
  (id: 2, name: "Thidar", age: 21),
  (id: 3, name: "Nilar", age: 22),
  (id: 4, name: "Ko Ko", age: 23),
];

const mixList = [
  1,
  2,
  (id: 1, name: "Aung Aung", age: 20),
  (id: 2, name: "Thidar", age: 21),
  (id: 3, name: "Nilar", age: 22),
  (id: 4, name: "Ko Ko", age: 23),
  "Hello"
];

void main(List<String> args) {
  // Pattern Destruction
  for (final (:id, :name, :age) in students) {
    print("ID : $id, Name : $name, Age : $age");
  }

  for (final element in mixList) {
    switchDemo(element);
  }

  switchDemo([1, 2, 3]);
  switchDemo([2, 3, 4]);
  switchDemo([1, 2, 3, 4]);
}

void switchDemo(dynamic list) {
  switch (list) {
    // List Pattern
    case [int a, int b, int c]:
      print("List with $a, $b, $c");
    // Record Pattern
    case (id: var id, name: var name, age: var age):
      print("ID : $id, Name : $name, Age : $age");
    default:
      print("Others");
  }
}
