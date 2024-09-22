library;

abstract final class Person {
  String name;

  Person(this.name);
}

base class Student extends Person {
  Student(super.name);
}

sealed class OtherPerson implements Person {
  @override
  String name = "Others";
}
