void main(List<String> args) {
  print(usingPatternConstants([0]));
  print(usingPatternConstants([1]));

  print(usingPatternVariable([1]));
  print(usingPatternVariable([1, 2]));
}

String usingPatternVariable(List<int> list) {
  if (list case [var x]) return "Single value with $x";
  return "Other List";
}

String usingPatternConstants(List<int> list) {
  if (list case [0]) return "Single value of Zero";
  return "Other List";
}
