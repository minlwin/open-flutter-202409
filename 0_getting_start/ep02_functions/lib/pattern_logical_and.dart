String getMessage(List<int> list) => switch (list) {
      [] => "Empty List",
      [0] => "Zero Value list",
      [int first] when first < 10 => "Less than ten signle value list",
      [int first] => "Single list with $first",
      _ => "Other Patterns"
    };

void main(List<String> args) {
  print(getMessage([]));
  print(getMessage([0]));
  print(getMessage([9]));
  print(getMessage([10]));
}
