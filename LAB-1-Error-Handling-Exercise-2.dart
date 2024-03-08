void main() {
  print(divide(10, 2));
  print(divide(10, 0));
}

String divide(int num1, int num2) {
  try {
    double ans = num1 / num2;
    if (num2 == 0) throw Exception('Cannot divide by zero');
    return 'Result: $ans';
  } catch (e) {
    return 'Error: ${e.toString()}';
  }
}
