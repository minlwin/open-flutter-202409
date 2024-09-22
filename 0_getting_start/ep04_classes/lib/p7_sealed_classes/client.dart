import 'package:ep04_classes/p7_sealed_classes/library.dart';

void main(List<String> args) {
  print(retriveAccountInfo(Admin("aung", "aung", level: 3, name: "Aung Aung")));
}

String retriveAccountInfo(Account account) {
  return switch (account) {
    Member m => "Member(name : ${m.name}, level : ${m.level})",
    Admin a => "Admin(name : ${a.name}, level : ${a.level})"
  };
}
