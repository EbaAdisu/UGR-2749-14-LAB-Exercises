void main() {
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Eba', () => 90);
  studentMarks.putIfAbsent('Adisu', () => 85);
  studentMarks.putIfAbsent('Kenea', () => 95);

  print('Student Marks: $studentMarks');

  print('\nIterating through the map:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });
  print('');

  String searchName = 'Bob';
  bool hasKey = studentMarks.containsKey(searchName);
  print('Does the map contain entry for $searchName? $hasKey');
}
