import 'dart:io';

void main() {
  stdout.write('Your grade : ');
  int grade = int.parse(stdin.readLineSync()!);
  switch (grade) {
    case >= 90:
      print('A+');
      break;
    case >= 80:
      print('A');
      break;
    case >= 70:
      print('B');
      break;
    case >= 60:
      print('C');
      break;
    case >= 50:
      print('D');
      break;
    default:
      print('F');
  }
}
