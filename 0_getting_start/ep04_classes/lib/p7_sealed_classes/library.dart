library;

sealed class Account {
  abstract int level;
  abstract String name;

  final String loginId;
  final String password;

  Account(this.loginId, this.password);

  void showLevel();
}

class Admin extends Account {
  @override
  int level;

  @override
  String name;

  Admin(super.loginId, super.password,
      {required this.level, required this.name});

  @override
  void showLevel() {
    print("Level of $name is Level $level");
  }
}

class Member implements Account {
  @override
  int level;

  @override
  String name;

  @override
  final String loginId;

  @override
  final String password;

  Member(this.name, this.loginId, this.password) : level = 1;

  @override
  void showLevel() {
    print("Level of $name is Level $level");
  }
}
