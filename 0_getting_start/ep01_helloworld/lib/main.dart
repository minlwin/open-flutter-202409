import 'package:ep01_helloworld/calculator.dart';

void main(List<String> args) {
  var calculator = Calculator(10, 5);
  print("${calculator.digit1} + ${calculator.digit2} = ${calculator.add()}");
  print(
      "${calculator.digit1} - ${calculator.digit2} = ${calculator.substract()}");
  print(
      "${calculator.digit1} * ${calculator.digit2} = ${calculator.multiply()}");

  var symbol = #hello;
  print(symbol);
}
