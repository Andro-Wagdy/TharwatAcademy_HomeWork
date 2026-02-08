/*
Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
print the total count of unique words.
*/

import 'dart:io';

void main() {
  int uniqueWordsCount = 0;
  print('write a sentence :');
  String sentence = stdin.readLineSync()!;
  Map<String, int> countofOccurances = {};
  for (var s in sentence.split(' ')) {
    if (countofOccurances.containsKey(s)) {
      countofOccurances[s] = countofOccurances[s]! + 1;
    } else {
      countofOccurances[s] = 1;
    }
  }
  print('all words that appeared once:');
  countofOccurances.forEach((key, value) {
    if (value == 1) {
      uniqueWordsCount += 1;
      print(key);
    }
  });
  print('uniqe words count : $uniqueWordsCount');
}
