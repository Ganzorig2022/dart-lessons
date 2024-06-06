void main(List<String> args) {
  const car = Car(type: VehicleType.car);
  print(car.type);
  car.accelerate();
  car.decelerate();
  const motorcycle = Motorcycle();
  print(motorcycle.type);
  motorcycle.accelerate();
  motorcycle.decelerate();
}

enum VehicleType { car, truck, motorcycle, bicycle }

abstract class Vehicle {
  final VehicleType type;
  const Vehicle({required this.type});

  void accelerate() => print('$type is accelerating...');
  void decelerate() => print('$type is decelerating...');
}

class Motorcycle implements Vehicle {
  const Motorcycle();
  @override
  void accelerate() {
    print('Motorcycle is accelerating...');
  }

  @override
  void decelerate() {
    print('Motorcycle is decelerating...');
  }

  @override
  VehicleType get type => VehicleType.motorcycle;
}

class Car extends Vehicle {
  const Car({required super.type});
}

