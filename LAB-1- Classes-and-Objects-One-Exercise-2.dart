void main() {
  var student = Student('Ebba', 22, 'USA', 'UGR-2749-14', [90, 80, 70, 60, 50]);
  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('Address: ${student.address}');
  print('Roll Number: ${student.rollNum}');
  print('Marks: ${student.marks}');
  print('Total Marks: ${student.totalMarks()}');
  print('Average: ${student.average()}');
}

class Person {
  String? name;
  int? age;
  String? address;
  Person(this.name, this.age, this.address);
}

class Student extends Person {
  String? rollNum;
  List<int>? marks;
  Student(String name, int age, String address, this.rollNum, this.marks)
      : super(name, age, address);
  int totalMarks() {
    int total = 0;
    for (int i = 0; i < marks!.length; i++) {
      total += marks![i];
    }
    return total;
  }

  int average() {
    if (marks!.isEmpty || marks == null) {
      return 0;
    }
    return totalMarks() ~/ marks!.length;
  }
}
