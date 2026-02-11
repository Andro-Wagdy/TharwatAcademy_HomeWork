/*
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
*/

import 'q3_grade_class.dart';

void main() {
  Grade grade = Grade();
  grade.score = 120;
  grade.score = 80;
  print(grade.score);
  print(grade.isPass());
  grade.score = 10;
  print(grade.isPass());
}
