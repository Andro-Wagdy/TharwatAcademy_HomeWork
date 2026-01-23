/*
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
*/

void main() {
  String path = '/products';
  List<String>? allPages = ['products', 'profile', 'orders'];
  Map<String, int>? productsPrices = {'toy': 20, 'shampo': 50};
  Map<String, dynamic>? userProfile = {
    'username': 'Andro',
    'email address': 'andro@gmail.com',
    'age': 23,
  };
  Map<String, dynamic>? orders = {'orderName': 'shampo', 'priceToPay': 50};
  switch (path) {
    case '/':
      print(
        'please choose one of ${allPages ?? 'website pages wasn\'t loaded successfully'}',
      );
      break;
    case '/products':
      print('buy your preferred product ${productsPrices ?? 'products wasn\'t loaded successfully'}');
      break;
    case '/orders':
      print(
        'review your orders and take action ${orders ?? 'no orders found'}',
      );
      break;
    case '/profile':
      print('Username: ${userProfile['username'] ?? 'Unknown'}');
      print('Email: ${userProfile['email address'] ?? 'No email'}');
      print('Age: ${userProfile['age'] ?? 'No age'}');
      break;
    default:
      print('404 Error Page was not found');
  }
}
