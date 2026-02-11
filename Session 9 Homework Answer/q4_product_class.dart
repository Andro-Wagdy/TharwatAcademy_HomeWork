/*
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
*/

class Product {
  String _name = '';
  int _price = 0;
  set name(String name) {
    if (name.isEmpty) {
      print('Invalid name');
    } else {
      this._name = name;
    }
  }

  set price(int price) {
    if (price < 0) {
      print('Invalid price');
    } else {
      this._price = price;
    }
  }

  get name => this._name;
  get price => this._price;

  get discountedPrice => this._price - this._price * 10 / 100;
}
