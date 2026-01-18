/*
a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double.
*/

void main() {
  List<Map<String, dynamic>> Students = [
    {'name': 'Andro', 'grade': 4.8},
    {'name': 'Ahmed', 'grade': 3.9},
  ];
  print(Students[1]['grade']);
  print((Students[0]['grade'] + Students[1]['grade']) / 2);
}
