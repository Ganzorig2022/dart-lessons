void main(List<String> arguments) {
  // print(doNothing());
  sayHelloTo('hi');
  withNamedParameters(name: 'Foo'); // hello Foo
  withNamedParametersWithDefaultValue(); // Hello World
  requiredNamedParameters(name: 'with required'); // Hello World
  print(add(3)); // 5
  print(add(4, 6)); // 10
  print(minus(4, 6)); // 2
}

// every functions return null
dynamic doNothing() {}

void sayHelloTo(String name) {
  print('Hello $name');
}

void withNamedParameters({String? name}) {
  print('Hello $name');
}

void withNamedParametersWithDefaultValue({String? name = 'Hello World!'}) {
  print('Hello $name');
}

// ! can't have default value
void requiredNamedParameters({required String name}) {
  print('Hello $name');
}

// Positional optional parameters with return
int add([int a = 1, int b = 2]) {
  return a + b;
}

// Positional optional parameters with arrow function
int minus([int a = 1, int b = 2]) => b - a;
