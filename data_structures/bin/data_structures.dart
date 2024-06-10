import 'package:collection/collection.dart';

void main(List<String> arguments) {
  const names = ['Foo', 'Bar', 'Quz'];

  for (final name in names) {
    print(name);
  }
  print('--------------------------------');

  for (final name in names.reversed) {
    print(name);
  }
  print('--------------------------------');

  if (names.contains('Quz')) {
    print('Quz is in the list.');
  }
  print('--------------------------------');

// FILTER METHOD
  final result = names.where((name) => name.startsWith('B'));
  print('result: $result'); // (Bar)
  print('--------------------------------');

// CREATING NEW ARRAY
  final result1 = names.sublist(1); // [Bar, Quz]
  print(result1); // (Bar)
  print('--------------------------------');

// MUTATING ORIGINAL ARRAY
  final ages = [20, 30, 40];
  ages.add(50);
  print(ages); // [20, 30, 40, 50]
  print('--------------------------------');

// REDUCE METHOD
  final numbers = [1, 2, 3, 4];
  final sum = numbers.fold(
      0, (int previousValue, int element) => previousValue + element);
  print(sum); // 10
  print('--------------------------------');

// SETS
  const names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  final uniqueNames = {...names2};
  print(uniqueNames); // {Foo, Bar, Baz}
  print('--------------------------------');

// COMPARING SETS
  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};

  if (SetEquality().equals(ages1, ages2)) {
    print('Two sets are equal');
  }
  print('--------------------------------');

// MAPS
  final info = {
    'name': 'Foo',
    'age': 20,
  };

  info.putIfAbsent('height', () => 180);
  print(info); // {name: Foo, age: 20, height: 180}
  print('--------------------------------');

  info['height'] = 190; // {name: Foo, age: 20, height: 190}

  if (info.containsKey('height')) {
    print('Height is ${info['height']}'); // Height is 190
  }

// ITERABLES = lazily initialized
  final iterable = Iterable.generate(10);
  print(iterable); // (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
  print('--------------------------------');

  // UNMODIFIABLE, READ-ONLY LIST using 'collection' package
  final names1 = ['John', 'Doe'];
  final readOnlyList  = UnmodifiableListView(names1);
  // readOnlyList.add('Jill'); // Unsupported operation: Cannot add to an unmodifiable list

}
