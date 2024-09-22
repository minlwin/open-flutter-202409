import 'package:ep04_classes/p4_base_modifier/library.dart';

base class Cat extends Animal with ColorEnable {
  Cat(super.species, this.color);

  @override
  String color;
}
