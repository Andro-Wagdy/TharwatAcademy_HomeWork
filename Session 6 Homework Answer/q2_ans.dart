/*
Odd Numbers in a Range - Ask the user to input a number n. - Print all odd numbers between 1
and n, and also print how many odd numbers were found.
*/

import 'dart:io';

void main() {
  int n;
  int count = 0;
  print('enter a number :');
  n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      count += 1;
    }
  }
  print('$count odd numbers were found');
}
