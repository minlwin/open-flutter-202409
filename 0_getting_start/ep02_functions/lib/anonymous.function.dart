const list = [1, 2, 3, 4, 5];

void main(List<String> args) {
  for (var input in list) {
    take(input, (a) {
      return a * 3;
    });
  }
}

void take(int input, int Function(int) func) {
  var result = func(input);
  print(result);
}

void twiceAndShow(int input) {
  print(input * 2);
}
