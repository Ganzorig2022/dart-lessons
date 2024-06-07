const json = {
  'name': 'Foo bar',
  'age': 20,
};

void main(List<String> arguments) {
  print('hello world'.reversed); // dlrow olleh
  print([2, 3, 4, 5].sum); // 14
  print([2, 3, 2, 5].containsDuplicateValues); // true

  final String ageAsString = json.find<int>('age', (int age) => age.toString());
  print(ageAsString); // 20
}

extension on String {
  String get reversed => split('').reversed.join();
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}

extension on Iterable {
  bool get containsDuplicateValues => toSet().length != length;
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    }
    return null;
  }
}
