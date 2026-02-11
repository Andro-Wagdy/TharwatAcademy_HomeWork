/*
Given two strings s and t, return true if t is an anagram of s, and false otherwise.
*/

void main() {
  print(isAnagram('ab', 'a'));
}

bool isAnagram(String s, String t) {
  Map<String, int> sCharactersCount = {};

  for (var n in s.split('')) {
    if (sCharactersCount.containsKey(n)) {
      sCharactersCount[n] = sCharactersCount[n]! + 1;
    } else {
      sCharactersCount[n] = 1;
    }
  }
  for (var tn in t.split('')) {
    if (!sCharactersCount.containsKey(tn)) {
      return false;
    }

    sCharactersCount[tn] = sCharactersCount[tn]! - 1;
  }
  for (var value in sCharactersCount.values) {
    if (value != 0) {
      return false;
    }
  }
  return true;
}

// bool isAnagram(String s, String t) {
//   List<String> newStringCharacters = [];
//   List<String> firstStringCharacters = s.split('');
//   List<String> secondStringCharacters = t.split('');
//   for (int i = 0; i < firstStringCharacters.length; i++) {
//     for (int j = 0; j < secondStringCharacters.length; j++) {
//       if (firstStringCharacters[i] == secondStringCharacters[j]) {
//         newStringCharacters.add(firstStringCharacters[i]);
//         secondStringCharacters.removeAt(j);
//         break;
//       }
//     }
//   }
//   if (newStringCharacters.join() == s&& newStringCharacters.join().length == t.length) {
    
//     return true;
//   }
  
//   return false;
// }
