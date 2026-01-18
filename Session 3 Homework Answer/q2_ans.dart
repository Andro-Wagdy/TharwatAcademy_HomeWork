/*
a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one.
*/

void main() {
  String country = 'Ismailia';
  int year = 2002;
  double weight = 100.5;
  bool likesCoding = true;
  print(
    'I was born in $year , I live in $country , My weight is $weight kg and do I like coding ? $likesCoding',
  );
  weight = 120.7;
  print(weight);
}
