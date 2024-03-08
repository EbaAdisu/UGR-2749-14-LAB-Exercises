import 'dart:io';

void main() {
  stdout.write('Num1 : ');
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write('Num2: ');
  int num2 = int.parse(stdin.readLineSync()!);
  stdout.write('Choose operation (+, -, *, /): ');
  String? operation = stdin.readLineSync();
  switch (operation) {
    case '+':
      print(num1 + num2);
      break;
    case '-':
      print(num1 - num2);
      break;
    case '*':
      print(num1 * num2);
      break;
    case '/':
      print(num1 / num2);
      break;
    default:
      print('Invalid operation');
  }
}
