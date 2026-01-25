/*
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
each name appears. Print only the names that appear more than once.
*/

void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  int aliCount = 0;
  int monaCount = 0;
  int omarCount = 0;
  for (var n in names) {
    if (n == 'Ali') {
      aliCount += 1;
    } else if (n == 'Mona') {
      monaCount += 1;
    } else if (n == 'Omar') {
      omarCount += 1;
    }
  }
  Map<String, int> countNames = {
    'Ali': aliCount,
    'Mona': monaCount,
    'Omar': omarCount,
  };
  print(
    'Ali appeared $aliCount times , Mona appeared $monaCount times and Omar appeared $omarCount times',
  );
  countNames.forEach((key, value) {
    if (value > 1) {
      print(key);
    }
  });
}
