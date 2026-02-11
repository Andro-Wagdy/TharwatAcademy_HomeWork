/*
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
*/

class Car {
  String _brand = '';
  int _year = 0;
  set brand(String brand) {
    if (brand.isEmpty) {
      print('Invalid brand');
    } else {
      this._brand = brand;
    }
  }

  set year(int year) {
    if (year < 1886) {
      print('Invalid year');
    } else {
      this._year = year;
    }
  }

  get brand => this._brand;
  get year => this._year;
}
