void main() {
  var person = Person();
  person.name = 'John';
  person.age = 30;
  person.address = 'New York';
  print('Name: ${person.name}');
  print('Age: ${person.age}');
  print('Address: ${person.address}');
}

class Person {
  String? name;
  int? age;
  String? address;
}
