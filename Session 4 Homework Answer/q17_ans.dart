/*
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
*/

void main() {
  int price = 249;
  String priceToCurrency;
  priceToCurrency = '${price.toString()} EGP';
  print(priceToCurrency);
  String priceWithCurrencyPaddedToLeft = priceToCurrency.padLeft(14);
  print(priceWithCurrencyPaddedToLeft.length > priceToCurrency.length);
  //int priceWithCurrencyLength = priceToCurrency.length;
  //print(priceWithCurrencyLength);
}
