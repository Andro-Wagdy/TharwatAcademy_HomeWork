/*
Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both.
*/

void main() {
  Course course1 = Course();
  course1.title = 'Complete Flutter Development';
  course1.durationinMonth = 5;
  Course course2 = Course();
  course2.title = 'Digital Marketing';
  print(
    'course 1 title : ${course1.title} , duraion(months) : ${course1.durationinMonth}'
  );
  print(
    'course 2 title : ${course2.title} , duraion(months) : ${course2.durationinMonth}'
  );
}

class Course {
  String? title;
  int durationinMonth = 3;
}
