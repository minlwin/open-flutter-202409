void showLength(String value) {
  print("Length of $value is ${value.length}");
}

class Cascade {
  String? name;
  int? age;

  showName() {
    print("My name is $name");
  }

  sayHello() {
    print("Hello");
  }
}

void main(List<String> args) {
  var cascade = Cascade()
    ..name = "Aung Aung"
    ..age = 20;

  print(cascade);
}
