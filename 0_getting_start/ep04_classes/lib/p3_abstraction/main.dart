import 'package:ep04_classes/p3_abstraction/classes.dart';

class Fruit1 extends Product with WeightEnable {
  Fruit1(super.name, super.price, this.weight);

  @override
  int weight;
}

class Fruit2 extends Goods with WeightEnable {
  @override
  Type type;

  Fruit2(this.type, this.weight);

  @override
  int weight;
}

class Fruit3 implements Goods, WeightEnable {
  @override
  Type type;
  @override
  int weight;

  Fruit3(this.type, this.weight);

  @override
  void showType() {
    print("Type is $type");
  }

  @override
  void showWeight() {
    print("Weight is $weight");
  }
}
