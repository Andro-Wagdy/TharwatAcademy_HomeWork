/*
Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
only the movies with a rating above 7.
*/

void main() {
  List<Movie> movies = [
    Movie(title: 'Green Mile', rating: 9.1),
    Movie(title: 'The Batman', rating: 8.5),
    Movie(title: 'Zoo Adventure', rating: 6),
    Movie(title: 'Joker', rating: 9),
  ];
  for (var m in movies) {
    if (m.rating! > 7) {
      print('Movie name : ${m.title} , rating : ${m.rating}');
    }
  }
}

class Movie {
  String? title;
  num? rating;
  Movie({required this.title, required this.rating}) {}
}
