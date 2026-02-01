/*
Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
numbers, and then calculate the difference between them.
*/

import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    print('enter number ${i + 1}');
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int largestNumber = numbers[0];
  int smallestNumber = numbers[0];
  for (var i in numbers) {
    if (i > largestNumber) {
      largestNumber = i;
    }
    if (i < smallestNumber) {
      smallestNumber = i;
    }
  }
  int difference = largestNumber - smallestNumber;
  print('difference between largest and smallest numbers = $difference');
}
