/*
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
*/

void main() {
  int num1 = 20;
  int num2 = 35;
  int num3 = 10;
  bool expressin1 = num1 > num2 || num3 > num2;
  bool expressin2 = num1 > num3 && num3 < num2;
  print(expressin1);
  print(expressin2);
  if (expressin1) {
    print('Rule passed');
  } else if (expressin2) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
