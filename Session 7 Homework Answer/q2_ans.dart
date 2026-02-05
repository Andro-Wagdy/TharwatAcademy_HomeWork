/*
Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
to set the values when creating the object. - In main(), create two car objects with different data and
print their details.
*/

void main() {
  Car car1 = Car('Ford', 2020);
  print('car1 brand : ${car1.brand} , car1 year : ${car1.year}');
    Car car2 = Car('BMW', 2024);
  print('car2 brand : ${car2.brand} , car2 year : ${car2.year}');
}

class Car {
  String? brand;
  int? year;
  Car(String brand, int year) {
    this.brand = brand;
    this.year = year;
  }
}
