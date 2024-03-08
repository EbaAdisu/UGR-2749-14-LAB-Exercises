import 'dart:io';

void main() {
  stdout.write('Num : ');
  int num = int.parse(stdin.readLineSync()!);
  bool answer = isPrime(num);
  print('is $num Prime? answer :$answer');
}

bool isPrime(int num) {
  if (num == 1) {
    return false;
  }
  int count = 0;
  for (int i = 1; i < num; i++) {
    if (num % i == 0) {
      count++;
    }
  }
  return count == 1;
}
