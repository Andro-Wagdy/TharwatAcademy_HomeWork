/*
Create a program that calculates the factorial of 6 and prints the result.
*/

void main() {
  int number = 6;
  int fact = 1;
  if (number <= 0) {
    print('choose a number higher than 0');
  } else {
    do {
      fact = fact * number;
      number--;
    } while (number > 0);
    print(fact);
  }
}
