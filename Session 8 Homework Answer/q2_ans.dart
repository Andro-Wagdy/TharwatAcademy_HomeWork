/*
Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns
the temperature in Fahrenheit. In main(), create an object and print the converted value.
*/

void main() {
  Temperature temperature = Temperature(celsius: 20);
  print(temperature.toFahrenheit());
}

class Temperature {
  int? celsius;
  Temperature({required this.celsius}) {}
  toFahrenheit() {
    return celsius! * 2 + 30;
  }
}
