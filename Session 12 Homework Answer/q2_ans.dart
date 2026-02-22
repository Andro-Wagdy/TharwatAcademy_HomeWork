/*
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order.
*/

void main() {
  FoodItem pizza = FoodItem(
    name: 'Pepperoni Pizza',
    price: 120.0,
    category: 'Pizza',
  );

  FoodItem cola = FoodItem(
    name: 'Cola',
    price: 20.0,
    category: 'Drinks',
  );

  Order order = Order();

  order.addItem(pizza);
  order.addItem(cola);
  order.addItem(cola);

  print('Total price: ${order.calculateTotal()}');
}

class FoodItem {
  final String name;
  final double price;
  final String category;

  FoodItem({
    required this.name,
    required this.price,
    required this.category,
  });
}

class Order {
  final List<FoodItem> _items = [];

  void addItem(FoodItem item) {
    _items.add(item);
  }

  double calculateTotal() {
    double total = 0;

    for (var item in _items) {
      total += item.price;
    }

    return total;
  }
}