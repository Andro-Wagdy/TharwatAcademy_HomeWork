/*
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance.
*/

import 'q1_bank_class.dart';

void main() {
  BankAccount bankAccount = BankAccount(owner: 'Andro');
  bankAccount.balance = -400;
  bankAccount.balance = 1000;
  print(bankAccount.balance);
  bankAccount.balance = 2000;
  print(bankAccount.balance);
}
