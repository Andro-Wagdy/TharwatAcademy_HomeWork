/*
Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not
*/

import 'dart:io';

void main() {
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  int sum;
  double avg;

  print('enter three numbers :');
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);
  num3 = int.parse(stdin.readLineSync()!);
  sum = num1 + num2 + num3;
  avg = sum / 3;
  print('sum = $sum');
  print('average = $avg');
  print(avg > 50);
}
