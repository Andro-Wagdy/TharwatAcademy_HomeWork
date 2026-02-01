/*
Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
guess up to 3 times. If they fail, reveal the correct number.
*/

import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int randomNumber = random.nextInt(20) + 1;
  int number;
  print(randomNumber);
  print('guess a number , you have 3 tries :');
  for (int i = 0; i < 3; i++) {
    number = int.parse(stdin.readLineSync()!);
    if (number == randomNumber) {
      print('You guessed the correct number!');
      break;
    } else if (i == 2 && number != randomNumber) {
      print('you failed , the correct number is $randomNumber');
    } else {
      print('wrong number , try again :');
    }
  }
}
