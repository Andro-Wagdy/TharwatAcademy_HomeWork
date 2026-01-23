/*
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
*/

void main() {
  List<int>? scores = [20, 17, 66];
  int? sum;
  if (scores.isEmpty || scores == null) {
    print('No scores');
  } else {
    sum = scores.first + scores.last;
  }
  print(sum! >= 40);
}
