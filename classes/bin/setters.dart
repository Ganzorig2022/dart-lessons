void main(List<String> args) {
  final car = Car();
  car.speed = 100; // setting speed
  print(car._speed); // getting speed
  car.speed = 200; // setting speed
  print(car._speed); // getting speed
}

class Car {
  int _speed = 0;
  int get speed => _speed;
  
  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('Speed cannot be negative');
    }
    _speed = newSpeed;
  }
}
