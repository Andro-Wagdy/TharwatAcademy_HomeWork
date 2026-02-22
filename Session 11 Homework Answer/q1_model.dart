/*
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).
*/

class Vehicle {
  double _fuelCapacity=100;
  double _baseConsumptionPer100KM=5;
  Vehicle({required double fuelCapacity, required double baseConsumption}) {
    if (fuelCapacity <= 0) {
      print("Invalid fuel capacity");
    } else {
      _fuelCapacity = fuelCapacity;
    }

    if (baseConsumption <= 0) {
      print("Invalid consumption");
    } else {
      _baseConsumptionPer100KM = baseConsumption;
    }
  }
  double calculateFuelNeeded(double distance) {
    return (distance / 100) * _baseConsumptionPer100KM;
  }

  bool canCompleteTrip(double distance) {
    return calculateFuelNeeded(distance) <= _fuelCapacity;
  }
}

class Car extends Vehicle {
  int _numberOfPassengers=2;
  Car({
    required double fuelCapacity,
    required double baseConsumption,
    required int numberOfPassengers,
  }) : super(fuelCapacity: fuelCapacity, baseConsumption: baseConsumption) {
    if (numberOfPassengers <= 0) {
      print("Invalid number of Passengers");
    } else {
      _numberOfPassengers = numberOfPassengers;
    }
  }
  @override
  double calculateFuelNeeded(double distance) {
    double newConsumption =
        _baseConsumptionPer100KM + _numberOfPassengers * 0.5;
    return (distance / 100) * newConsumption;
  }
}

class Truck extends Vehicle {
  int _cargoWeight=20;
  Truck({
    required double fuelCapacity,
    required double baseConsumption,
    required int cargoWeight,
  }) : super(fuelCapacity: fuelCapacity, baseConsumption: baseConsumption) {
    if (cargoWeight <= 0) {
      print('invalid cargo weight');
    } else {
      _cargoWeight = cargoWeight;
    }
  }
  @override
  double calculateFuelNeeded(double distance) {
    double newConsumption =
        _baseConsumptionPer100KM + (_cargoWeight / 100) * 2;
        return (distance / 100) * newConsumption;
  }
}
