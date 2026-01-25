/*
Create a program with a setting called API_URL that is empty. If it is empty, replace it with
'https://example.com'. Print the new value in capital letters.
*/

void main() {
  String API_URL = '';
  if (API_URL.isEmpty) {
    API_URL = 'https://example.com';
  }
  print(API_URL.toUpperCase());
}
