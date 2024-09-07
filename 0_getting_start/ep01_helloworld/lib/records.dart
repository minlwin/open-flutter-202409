(int, int, int) record = (1, 2, 3);

var mix = (1, "Hello", data: 10);

void main(List<String> args) {
  print(record);
  print("Member 1 : ${record.$1}");
  print("Member 2 : ${record.$2}");
  print("Member 3 : ${record.$3}");

  print(mix);
  print("Member 1 : ${mix.$1}");
  print("Member 2 : ${mix.$2}");
  print("Member 3 : ${mix.data}");
}

typedef Member = ({int id, String name});

printMember(Member arg) {
  print(arg.id);
  print(arg.name);
}
