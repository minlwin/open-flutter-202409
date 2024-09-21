import 'package:ep04_classes/ep04_classes.dart';

void main(List<String> args) {
  Person instance = Student("Thidar");
  instance.greet();

  print("instance is a Teacher : ${instance is Teacher}");
  print("instance is a Student : ${instance is Student}");
  print("instance is a Runner : ${instance is Runner}");
  print("instance is a Singer : ${instance is Singer}");

  if (instance case Runner runner) runner.run("Inyalake");
  if (instance case Singer singer) {
    singer.sing();
    singer.rocker = false;
  }
}

class Teacher extends Student {
  Teacher(super.name);

  @override
  void greet() {
    print("I am a teacher and my name is $name");
  }
}
