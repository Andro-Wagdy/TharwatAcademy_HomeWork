/*
Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
and print the total.
*/

void main() {
  List<int> scores = [10, 0, 20, 30];
  int result = 0;
  String noZeroes = '';
  for (var n in scores) {
    noZeroes = n.toString().replaceAll('0', '');
    if (noZeroes.isNotEmpty) {
      result += int.parse(noZeroes);
    }
  }
  print(result);
}
