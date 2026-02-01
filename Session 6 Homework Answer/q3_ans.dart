/*
Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
count how many vowels it has.
*/

import 'dart:io';

void main() {
  String word;
  int count = 0;
  print('enter a word :');
  word = stdin.readLineSync()!;
  String reversedWord = word.split('').reversed.join();
  print(reversedWord);
  String vowels = 'aeiouAEIOU';
  for (var v in word.split('')) {
    if (vowels.contains(v)) {
      count += 1;
    }
  }
  print('there are $count vowels in $word');
}
