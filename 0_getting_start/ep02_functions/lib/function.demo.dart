// Expression Function
bool isEven(int input) => input % 2 == 0;

// Named Parater with default value
int add({int digit1 = 0, int digit2 = 0}) => digit1 + digit2;

// Optional Position Parameter
String say(String from, String to, [String device = "Default"]) =>
    "$from say $to $device";

void main(List<String> args) {
  var result = isEven(10);
  print(result);

  var addResult = add(digit2: 5, digit1: 10);
  print(addResult);

  var message = say("Aung Aung", "Maung Maung");
  print(message);
}
