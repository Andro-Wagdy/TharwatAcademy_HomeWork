/*
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
*/

void main() {
  int mark = 90;
  String grade;
  if (mark >= 85) {
    grade = 'A';
  } else if (mark >= 70 && mark < 85) {
    grade = 'B';
  } else if (mark >= 65 && mark < 70) {
    grade = 'C';
  } else if (mark >= 50 && mark < 65) {
    grade = 'D';
  } else {
    grade = 'F';
  }
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Very Good');
      break;
    case 'C':
      print('Good');
      break;
    case 'D':
      print('Needs improvement');
      break;
    case 'F':
      print('Failed');
      break;
    default:
      print('Invalid Grade');
  }
}
