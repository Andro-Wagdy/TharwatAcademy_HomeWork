/*
If you need a variable that can hold any type of value and may change during
execution, which data type would you use? Write a code example to show this.
*/

/*
dynamic data type is the best option for this problem , it can reassign the variable to another data type depending on the value
*/

void main() {
  dynamic test = 35;
  print(test);

  test = true;
  print(test);
}
