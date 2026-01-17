/*
What is the difference between var and dynamic in Dart? Provide an example of
each.
*/

/*
dynamic is a data type that can declare its variable to the current value's data type and can reassign the variable to another value with
different data type .

var is a keyword that can declare its variable to the current value's data type but can't reassign the variable to another value with
different data type
*/

void main() {
  dynamic test1 = true;
  test1 = 20;

  var test2 = true;
  // test2 = 20; => error
}
