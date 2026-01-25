/*
Create a program with the numbers [3, 7, 2, 9, 12, 4, 6]. Print only the numbers that are divisible by
3.
*/

void main() {
  List<int> numbers = [3, 7, 2, 9, 12, 4, 6];
  for (var n in numbers) {
    if (n % 3 == 0) {
      print(n);
    }
  }
}
