/*
Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.
*/

void main() {
  String priceWithCode = 'EGP 12.50';
  String number = '';
  for (var ch in priceWithCode.split('')) {
    if (int.tryParse(ch) != null || ch == '.') {
      number += ch;
    }
  }
  double finalNumber = double.parse(number);
  print(finalNumber);
}
