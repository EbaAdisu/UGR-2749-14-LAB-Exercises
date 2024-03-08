import 'dart:io';

void main() {
  stdout.write('Num1 : ');
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write('Num2: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print(addNums(num1, num2));
}

int addNums(int num1, int num2) {
  return num1 + num2;
}
