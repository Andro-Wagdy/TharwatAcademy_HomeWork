/*
Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
*/

import 'dart:io';

void main() {
  int digitSum = 0;
  int digit = 0;
  print('enter a number :');
  int number = int.parse(stdin.readLineSync()!);
  while (number >= 10) {
    digitSum = 0;
    while (number > 0) {
      digit = number % 10;
      digitSum = digitSum + digit;
      number ~/= 10;
    }
    number = digitSum;
  }
  print(number);
}
