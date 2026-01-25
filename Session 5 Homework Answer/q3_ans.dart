/*
Create a program with a price of 180 and a flag showing the person is a student. If the person is a
student and the price is 150 or more, reduce the price by 15. Print the final price.
*/

void main() {
  bool isStudent = true;
  double price = 130;
  double finalprice;
  if (isStudent && price >= 150) {
    finalprice = price - price * 0.15;
  } else {
    finalprice = price;
  }
  print(finalprice);
}
