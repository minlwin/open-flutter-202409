var list = ["Dart", "Flutter"];

void main(List<String> args) {
  print(list);

  list.add("Android");

  print(list);

  var last = list.removeLast();
  print(last);
  print(list);

  list.insert(0, "Hello");
  print(list);

  var first = list.removeAt(0);
  print(first);
  print(list);

  var reversed = list.reversed.toList();
  print(reversed);

  print(list);

  reversed.clear();
  print(reversed);
  reversed.add("Data 1");
  print(reversed);
}
