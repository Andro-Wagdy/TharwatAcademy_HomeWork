/*
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
*/

class Book {
  String _title = '';
  int _pages = 0;
  set title(String title) {
    if (title.isEmpty) {
      print('Invalid title');
    } else {
      this._title = title;
    }
  }

  set pages(int pages) {
    if (pages <= 0) {
      print('Invalid pages');
    } else {
      this._pages = pages;
    }
  }

  get title => this._title;
  get readingTime => 2*this._pages;
}
