/*
Class with Default Attribute Value - Create a class Product with attributes name and price. 
Give price a default value of 0. - Create two objects: one with a custom price and one with the
default price. Print their details.
*/

void main() {
  Product product1 = Product();
  product1.name = 'TV';
  print('product1 name : ${product1.name} , price : ${product1.price}');
    Product product2 = Product();
  product2.name = 'Fridge';
  product2.price = 400;
  print('product2 name : ${product2.name} , price : ${product2.price}');
}

class Product {
  String? name;
  int price = 0;
}
