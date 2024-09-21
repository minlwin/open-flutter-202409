class Person {
  final String _name;

  Person(this._name);

  void greet() {
    print("Hello I am $_name.");
  }

  get name => _name;
}

class Student extends Person with Runner, Singer {
  Student(super.name);
}

mixin Runner {
  void run(String place) {
    print("I am running along $place.");
  }
}

mixin Singer {
  bool rocker = true;

  void sing() {
    print("I am singing a song.");
  }
}
