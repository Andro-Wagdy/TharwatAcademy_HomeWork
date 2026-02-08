/*
Create a class City with attributes name and population. In main(), create two city objects and
print their details.
*/

void main() {
  City city1 = City();
  city1.name = 'Ismailia';
  city1.populaion = 1000000;
  City city2 = City();
  city2.name = 'Cairo';
  city2.populaion = 50000000;
  print('city 1 name : ${city1.name} , population : ${city1.populaion}');
  print('city 2 name : ${city2.name} , population : ${city2.populaion}');
}

class City {
  String? name;
  int? populaion;
}
