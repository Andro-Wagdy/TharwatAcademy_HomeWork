/*
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
*/

void main() {
  List<int> numbers = [4, 4, 6, 6, 9, 9, 1, 1];
  Set<int> numbers2 = numbers.toSet();
  print(numbers2);
  if (numbers2.length < numbers.length) {
    print('duplicates were removed');
  } else if (numbers2.length == numbers.length) {
    print('no duplicates found');
  }
}
