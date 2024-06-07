// ignore_for_file: unused_local_variable

void main(List<String> arguments) {
  //immutatable
  const name = 'Bold';
  final name1 = 'Bat';

  //mutatable
  var address = '127.0.0.1';
  address = 'BGD';
  print(address); // BGD

  //assigning variables to each other
  String fullname = 'Dulmaa';
  var fullname1 = '';
  fullname1 = fullname;
  print(fullname1);

  /// constants cannot be assigned to a non-constant
  // final age = 38;
  // const age2 = age;

  /// can be assigned to a constant
  const age = 38;
  const age2 = age;
  print(age2); // 38

  /// final variables can be mutated while constants are not...
  final yourList = [1, 2, 3];
  yourList.add(5);
  print(yourList); // [1, 2, 3, 5]

  // late final myValue;

  // Typed list and map
  const List<int> someList = [1, 2, 3];
  const Map<String, String> someMap = {'foo': 'bar'};
  const Set<int> someSet = {1, 2, 3};

  const dynamic someNull = null;
}
