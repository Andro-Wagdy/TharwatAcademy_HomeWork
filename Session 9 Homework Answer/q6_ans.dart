/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
*/

import 'dart:io';

void main() {
  List<String> stack = [];
  print('enter a text');
  String input = stdin.readLineSync()!;
  for (var ch in input.split('')) {
    if (ch == '(' || ch == '[' || ch == '{') {
      stack.add(ch);
    } else {
      if (stack.isEmpty) {
        print('invalid');
        return;
      } else {
        String last = stack.last;
        if (last == '(' && ch == ')' ||
            last == '[' && ch == ']' ||
            last == '{' && ch == '}') {
          stack.removeLast();
        } else {
          print('Invalid');
          return;
        }
      }
    }
  }
  if (stack.isEmpty) {
    print('Valid');
  } else {
    print('Invalid');
  }
}
