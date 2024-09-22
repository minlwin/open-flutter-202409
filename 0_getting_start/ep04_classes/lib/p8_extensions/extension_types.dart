extension type MyNumber(int data) {
  // Arithmetics Operators
  operator +(MyNumber other) => data + other.data;
  operator -(MyNumber other) => data - other.data;
  operator *(MyNumber other) => data * other.data;
  operator /(MyNumber other) => data / other.data;
  operator %(MyNumber other) => data % other.data;

  // Relational Operator
  bool operator >(MyNumber other) => data > other.data;
  bool operator >=(MyNumber other) => data < other.data;
  bool operator <(MyNumber other) => data >= other.data;
  bool operator <=(MyNumber other) => data <= other.data;
}

void main(List<String> args) {
  var v1 = MyNumber(10);
  var v2 = MyNumber(5);

  var v3 = v1 + v2;
  print("$v1 + $v2 = $v3");

  print("v3 is instance of MyNumber : ${v3 is MyNumber}");
}
