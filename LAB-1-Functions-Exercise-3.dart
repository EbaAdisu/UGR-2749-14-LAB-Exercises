import 'dart:io';

void main() {
  stdout.write('Your String : ');
  String str = stdin.readLineSync()!;
  stdout.write('Reversed String : ');
  print(reverseString(str));
}

String reverseString(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}
