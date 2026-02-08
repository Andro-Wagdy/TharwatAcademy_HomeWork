/*
Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
that increases the salary. In main(), create an employee, give them a raise, and print the new
salary.
*/

void main() {
  Employee employee1 = Employee(name: 'Andro', salary: 17000);
  employee1.giveRaise(2300);
  Employee employee2 = Employee(name: 'Mina', salary: 13000);
  employee2.giveRaise(1500);
  print('employee 1 salaray : ${employee1.salary}');
  print('employee 2 salaray : ${employee2.salary}');
}

class Employee {
  String? name;
  int? salary;
  Employee({required this.name, required this.salary}) {}
  giveRaise(int amount) {
    salary = salary! + amount;
  }
}
