/*
Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
number and the second largest number (without sorting the list).
*/

import 'dart:io';

void main() {
  print('enter six numbers');
  int number;

  List<int> numbersList = [];

  for (int i = 1; i < 7; i++) {
    print('number $i :');
    number = int.parse(stdin.readLineSync()!);
    numbersList.add(number);
  }
  int largestNumber;
  int secondLargestNumber;
  if (numbersList[0] > numbersList[1]) {
    largestNumber = numbersList[0];
    secondLargestNumber = numbersList[1];
  } else {
    largestNumber = numbersList[1];
    secondLargestNumber = numbersList[0];
  }
  for (var n in numbersList) {
    if (n > largestNumber) {
      secondLargestNumber = largestNumber;
      largestNumber = n;
    } else if (n > secondLargestNumber && n != largestNumber) {
      secondLargestNumber = n;
    }
  }
  print(largestNumber);
  print(secondLargestNumber);
}
