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

import 'q1_model.dart';

void main() {
  Car car1 = Car(fuelCapacity: 100, baseConsumption: 3, numberOfPassengers: 4);
  Car car2 = Car(fuelCapacity: 80, baseConsumption: 20, numberOfPassengers: 1);
  Truck truck1 = Truck(
    fuelCapacity: 200,
    baseConsumption: 30,
    cargoWeight: 150,
  );
  Truck truck2 = Truck(
    fuelCapacity: 250,
    baseConsumption: 10,
    cargoWeight: 400,
  );
  List<Vehicle> vehicles = [car1, car2, truck1, truck2];
  List<double> tripDistances = [200, 100, 400, 800];
for (int i = 0; i < vehicles.length; i++) {

  print('Vehicle ${i + 1}:');

  for (double distance in tripDistances) {

    double fuel =
        vehicles[i].calculateFuelNeeded(distance);

    print('Distance: $distance km → Fuel: $fuel');

    if (!vehicles[i].canCompleteTrip(distance)) {
      print('Cannot complete trip');
    } else {
      print('Can complete trip');
    }
  }
  print('----------------');

}
}
