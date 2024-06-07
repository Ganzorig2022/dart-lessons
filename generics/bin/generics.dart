void main(List<String> arguments) {
  final double doubleValue = eitherIntOrDouble(WhatToReturn.double) as double;
  print(doubleValue);
  final int intValue = eitherIntOrDouble(WhatToReturn.int) as int;
  print(intValue);
}

enum WhatToReturn { int, double }

num eitherIntOrDouble(WhatToReturn whatToReturn) {
  switch (whatToReturn) {
    case WhatToReturn.int:
      return 1;
    case WhatToReturn.double:
      return 1.0;
  }
}
