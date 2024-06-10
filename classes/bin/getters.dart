void main(List<String> args) {
  const person = Person(firstName: 'Foo', lastName: 'Bar');
  print(person.fullName); // Foo Bar
}

class Person {
  final String firstName;
  final String lastName;

 String get fullName=> '$firstName $lastName';

  const Person({
    required this.firstName,
    required this.lastName,
  });
}
