/*
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
*/

void main() {
  String stu1 = 'stu1';
  String stu2 = 'stu2';
  String stu3 = 'stu3';

  Map<String, String?> studentNames = {
    stu1: 'Andro',
    stu2: 'ahmed',
    stu3: 'Mina',
  };
  String allStudentNames =
      '${studentNames[stu1]} , ${studentNames[stu2]} , ${studentNames[stu3]}';
  if (studentNames[stu1] == null) {
    studentNames[stu1] = 'unknown student';
    print('Non-prod');
    print('Student names : ${allStudentNames.toUpperCase()}');
  } else if (studentNames[stu2] == null) {
    studentNames[stu2] = 'unknown student';
    print('Non-prod');
    print('Student names : ${allStudentNames.toUpperCase()}');
  } else if (studentNames[stu3] == null) {
    studentNames[stu3] = 'unknown student';
    print('Non-prod');
    print('Student names : ${allStudentNames.toUpperCase()}');
  } else {
    print('prod ready');
    print('Student names : ${allStudentNames.toUpperCase()}');
  }
}
