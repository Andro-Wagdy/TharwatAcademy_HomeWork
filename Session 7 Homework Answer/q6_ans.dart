/*
 Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. 
Then print the shortest word and the longest word from the sentence.
*/

import 'dart:io';

void main() {
  print('enter a sentence :');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  print(words);
  String lonegstWord = words[0];
  String shortestWord = words[0];
  for (var word in words) {

    if (word.length > lonegstWord.length) {
      lonegstWord = word;
    } if (word.length < shortestWord.length) {
      shortestWord = word;
    }
  }
  print('longest word is : $lonegstWord');
  print('shortest word is : $shortestWord');
}
