import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  int num = int.parse(input!);
  if (num % 2 == 0) {
    print('Even');
  } else {
    print('Odd');
  }
}
