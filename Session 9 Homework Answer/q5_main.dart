/*
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
*/

import 'q5_book_class.dart';

void main() {
  Book book = Book();
  book.title = 'Hello World';
  book.pages = 24;
  print(book.title);
  print(book.readingTime);
}
