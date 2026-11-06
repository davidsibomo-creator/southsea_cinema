import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/Models/Movies.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('sandwich repository unit test', () {
    test('get movies and return two movies', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> Movies = repository.getMovies();

      expect(Movies.length, 2);
    });
  });
  test('get movies contains valid Sinners and Bleach movies', () {
    final MovieRepository repository = MovieRepository();
    final List<Movie> Movies = repository.getMovies();

    final Movie Sinner = Movies[0];
    expect(Sinner.id, 'Sinner');
    expect(Sinner.title, 'Sinners');
    expect(Sinner.synopsis, 'Trying to leave their troubled lives behind, twin brothers return to their hometown to start again, only to discover that an even greater evil is waiting to welcome them back.');
    expect(Sinner.ticketprice, 7.50);
    expect(Sinner.posterimage, isNotEmpty);

     final Movie Bleach = Movies[0];
    expect(Bleach.id, 'Bleacher');
    expect(Bleach.title, 'Bleach Thousand Year Blood War');
    expect(Bleach.synopsis, 'Ichigio and Aizen face off against the quincy king, YHWACH');
    expect(Bleach.ticketprice, 4.50);
    expect(Bleach.posterimage, isNotEmpty);
  });
}
