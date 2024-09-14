void main(List<String> args) {
  show((1, "Aung Aung"));
  show((null, null));
}

void show((int?, String?) input) {
  var (id, name) = input;

  print("Id is ${id ?? 0}");
  print("Name is ${name ?? 'No Name'}");
}
