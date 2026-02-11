/*
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list
*/

import 'dart:io';

void main() {
  print('enter 5 numbers :');
  List<int> numbersList = [];
  int number;
  for (int i = 0; i < 5; i++) {
    print('number ${i + 1} :');
    number = int.parse(stdin.readLineSync()!);
    numbersList.add(number);
  }
  int largestNumber = numbersList[0];
  int smallestNumber = numbersList[0];
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;
  for (var n in numbersList) {
    if (n > largestNumber) {
      largestNumber = n;
    }
    if (n < smallestNumber) {
      smallestNumber = n;
    }
    sum += n;
    if (n % 2 == 0) {
      evenCount += 1;
    } else {
      oddCount += 1;
    }
  }
  print('Largest number : $largestNumber');
  print('Smallest Number : $smallestNumber');
  print('Difference : ${largestNumber - smallestNumber}');
  double average = sum / numbersList.length;
  print('Average : $average');
  for (var i in numbersList) {
    if (i > average) {
      print('Numbers above average : $i');
    }
  }
  print('even numbers count in the list : $evenCount');
  print('odd numbers count in the list : $oddCount');
}
