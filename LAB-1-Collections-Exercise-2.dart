import 'dart:math';

void main() {
  List<int> randomNumbers = generateRandomNumbers(10, 10);
  print('Original List: $randomNumbers');
  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);
  print('Unique Numbers: $uniqueNumbers');
}

List<int> generateRandomNumbers(int count, int range) {
  Random random = Random();
  List<int> numbers = List.generate(count, (index) => random.nextInt(range));
  return numbers;
}
