void main() {
  var person = Person('Ebba', 25, 'Ethiopia');
  person.name = 'Bereket';
  person.age = 30;
  person.address = 'USA';
  print('Name: ${person.name}');
  print('Age: ${person.age}');
  print('Address: ${person.address}');
}

class Person {
  String? name;
  int? age;
  String? address;
  Person(this.name, this.age, this.address);
}
