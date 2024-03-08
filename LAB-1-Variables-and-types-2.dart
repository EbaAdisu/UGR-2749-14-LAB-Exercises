import 'dart:io';

void main() {
  const int speed = 299792458;
  String? input = stdin.readLineSync();
  int distance = int.parse(input!);
  print(distance / speed);
}
