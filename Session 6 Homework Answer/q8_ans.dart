/*
Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
print the largest digit.
*/

import 'dart:io';

void main() {
  print('enter a number :');
  int number = int.parse(stdin.readLineSync()!);
  List<String> stringDigits = number.toString().split('');
  List<int> intDigits = stringDigits.map(int.parse).toList();
  int largestDigit = intDigits[0];
  int digitSum = 0;
  for (var n in intDigits) {
    digitSum = digitSum + n;
    if (n > largestDigit) {
      largestDigit = n;
    }
  }
  print(largestDigit);
}
