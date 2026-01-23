/*
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print
*/

void main() {
  bool isUnder18 = false;
  bool hasParent = false;
  String areaStatus = 'restricted';
  switch (areaStatus) {
    case ('general'):
      print('everyone can buy a ticket');
      break;
    case ('restricted'):
      if (isUnder18 && hasParent == false) {
        print('you can\'t buy a ticket');
      }  else {
        print('you can buy a ticket');
      }
      break;
    default:
      print('sorry cenima is closed today');
  }
}
