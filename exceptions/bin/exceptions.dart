void main(List<String> arguments) {
  tryCreatingPerson(age: -2); // InvalidAgeException: Age cannot be negative
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
    // on InvalidAgeException ni zowhon custom exception-ii error-uudiig catch hiine.
  } on InvalidAgeException catch (exception, stackTrace) {
    print(exception);
    // print(stackTrace);
  }
  print('-----------------------------------');
}

class Person {
  final int age;
  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(age, 'Age cannot be negative');
    } else if (age > 140) {
      throw InvalidAgeException(age, 'Age must be less than 140');
    }
  }
}

// custom exception class
class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(this.age, this.message);

  @override
  String toString() {
    return 'InvalidAgeException: $message';
  }
}
