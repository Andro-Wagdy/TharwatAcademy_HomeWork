/*
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length
*/

import 'dart:io';

void main() {
  Map<String, String> userPhoneNumber = {'user1': '01204629958'};
  if (userPhoneNumber['user1'] == null) {
    print('please enter your phone number');
    userPhoneNumber['user1'] = stdin.readLineSync()!;
    print(userPhoneNumber['user1']!.length);
  } else {
    print(userPhoneNumber['user1']!.length);
  }
}
