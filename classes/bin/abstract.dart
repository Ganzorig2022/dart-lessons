void main() {
  // void main
  PersianCat cat = PersianCat();
  cat.walk();
  cat.talk();
}

abstract class Cat {
  // Abstract class Cat
  void walk();
  void talk();
}

class PersianCat extends Cat {
  // Class Cat
  @override
  void walk() {
    // Void walk
    print('The Persian cat is walking...');
  }

  @override
  void talk() {
    print('The Persian cat says meow...');
  }
}

/* The capability of using an abstract class as a blueprint lends greater assurance to developers. It ensures that child classes adhere to certain rules laid out by the parent class method.

This kind of design is highly beneficial when we work with complex systems, where multiple interfaces are to be integrated, or when a parent class is subject to frequent changes. */