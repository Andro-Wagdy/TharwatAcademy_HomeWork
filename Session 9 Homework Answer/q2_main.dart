/*
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
*/

import 'q2_car_class.dart';

void main() {
  Car car1 = Car();
  car1.brand = 'BMW';
  car1.year = 2020;
  print("car 1 brand : ${car1.brand} car 1 year : ${car1.year}");
  Car car2 = Car();
  car2.brand = '';
  car2.year = 1700;
  
}
