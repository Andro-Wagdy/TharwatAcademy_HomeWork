/*
Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
and how many characters (excluding spaces).
*/

import 'dart:io';

void main() {
  print('enter a short sentence');
  String sentence = stdin.readLineSync()!;
  int wordCount = 0;
  int characterCount = 0;
  for (var s in sentence.split(' ')) {
    if (s != '') {
      wordCount++;
    }
  }
  print('there are $wordCount words in your sentence');
  for (var ch in sentence.split('')) {
    if (ch != ' ') {
      characterCount++;
    }
  }
  print('there are $characterCount characters in your sentence');
}
