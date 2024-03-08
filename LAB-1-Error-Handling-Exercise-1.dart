import 'dart:io';

void main() {
  try {
    stdout.write('Enter a number: ');
    String userInput = stdin.readLineSync()!;
    int num = int.parse(userInput);
    print('Number is: $num');
  } catch (error) {
    print('Error: Invalid input. Please enter a valid number.');
  }
}
