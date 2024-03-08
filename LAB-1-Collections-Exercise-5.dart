void main() {
  Student student1 = Student('Bonsa', [85, 90, 92, 88, 87]);

  try {
    double averageMark = student1.calculateAverageMark();
    print("${student1.name}'s Average Mark: $averageMark");
  } catch (e) {
    print('Error: $e');
  }
}

class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      throw Exception('No marks available for $name');
    }

    int totalMarks = marks.reduce((value, element) => value + element);
    double averageMark = totalMarks / marks.length;
    return averageMark;
  }
}
