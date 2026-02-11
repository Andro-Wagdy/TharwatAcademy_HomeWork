/*
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance.
*/

class BankAccount {
  int _balance = 0;
  String? owner;
  BankAccount({required this.owner});
  set balance(int balance) {
    if (balance < 0) {
      print('Invalid balance');
    } else {
      this._balance = this._balance + balance;
    }
  }

  get balance => this._balance;
}
