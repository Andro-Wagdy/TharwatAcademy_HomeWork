/*
Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
the method.
*/

void main() {
  Calculator calculator = Calculator();
  calculator.addNumbers(3, 4);
}

class Calculator {
  int? num1;
  int? num2;
  addNumbers(num1, num2) {
    print(num1 + num2);
  }
}
