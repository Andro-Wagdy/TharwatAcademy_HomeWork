/*
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.
*/

void main() {
  print(isPalindrome('PoOp'));
  
}

bool isPalindrome(String s) {
  String noSymbolsOrSpacesLowerCase = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  if (noSymbolsOrSpacesLowerCase == noSymbolsOrSpacesLowerCase.split('').reversed.join()) {
    return true;
  } else {
    return false;
  }
}
