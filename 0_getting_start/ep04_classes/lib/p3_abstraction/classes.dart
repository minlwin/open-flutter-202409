class Product {
  final String name;
  final int price;
  final String _category;

  Product(this.name, this.price) : _category = "Original";

  void showInfo() {
    print("Product{name : $name, price : $price, category : $_category}");
  }
}

abstract class Goods {
  abstract Type type;

  void showType() {
    print("Type is $type");
  }
}

mixin WeightEnable {
  abstract int weight;

  void showWeight() {
    print("Weight is $weight KG");
  }
}

enum Type {
  used,
  brandNew;
}

class SaleProduct extends Goods with WeightEnable implements Product {
  @override
  final String name;
  @override
  final int price;
  @override
  final String _category;
  @override
  Type type;
  @override
  int weight;

  SaleProduct(this.name, this.price, this.type, this.weight)
      : _category = "Sales";

  @override
  void showInfo() {
    print("Sale Product{name: $name, price : $price}");
  }
}
