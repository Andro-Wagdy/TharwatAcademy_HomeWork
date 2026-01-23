/*
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
*/

void main() {
  double price = 24.6;
  double studentDiscount = 0.10;
  double couponDiscount = 0.15;
  bool hasCoupon = false;
  bool isPriceAboveThreshold = true;
  String user = 'fmafami';
  if (user == 'student') {
    price = price - price * studentDiscount;
  } else if (user != 'student' && hasCoupon && isPriceAboveThreshold == false) {
    price = price - price * couponDiscount;
  } else {
    price = price;
  }
  print(price);
}
