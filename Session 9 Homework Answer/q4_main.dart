/*
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
*/

import 'q4_product_class.dart' show Product;

void main() {
  Product product = Product();
  product.name = 'TV';
  product.price = 3000;
  print('product name : ${product.name} , product price : ${product.price}');
  print('price after discount : ${product.discountedPrice}');
}
