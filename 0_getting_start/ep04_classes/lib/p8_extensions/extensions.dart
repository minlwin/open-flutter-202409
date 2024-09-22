extension PrseInString on String {
  int parseInt() {
    return int.parse(this);
  }
}

extension MmkInt on int {
  String mmk() {
    return "$this MMK";
  }
}
