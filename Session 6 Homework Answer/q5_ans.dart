/*
Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
10, then calculate the sum of all results.
*/

import 'dart:io';

void main() {
  print('enter a number');
  int sum = 0;
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print(i * number);
    sum = sum + i * number;
  }
  print(sum);
}
