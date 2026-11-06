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

    final Movie sinner = Movies[0];
    expect(sinner.id, 'Sinner');
    expect(sinner.title, 'Sinners');
    expect(sinner.synopsis, 'Trying to leave their troubled lives behind, twin brothers return to their hometown to start again, only to discover that an even greater evil is waiting to welcome them back.');
    expect(sinner.ticketprice, 7.50);
    expect(sinner.posterimage, isNotEmpty);

     final Movie bleach = Movies[0];
    expect(bleach.id, 'Bleacher');
    expect(bleach.title, 'Bleach Thousand Year Blood War');
    expect(bleach.synopsis, 'Ichigio and Aizen face off against the quincy king, YHWACH');
    expect(bleach.ticketprice, 4.50);
    expect(bleach.posterimage, isNotEmpty);
  });

  test('get MovieByID returns matching Movie when ID exists', () {
    final MovieRepository repository = MovieRepository();
    final Movie? movies = repository.getMovieById('Sinner');

   
    expect(movies, isNotNull);
    expect(movies?.title, 'Sinners');
    expect(movies?.ticketprice, 7.50);
   


  });

  test('get MovieByID returns matching Movie when ID does not exists', () {
    final MovieRepository repository = MovieRepository();
    final Movie? movies = repository.getMovieById('non-existent');

   
    expect(movies, isNull);
    
  });
}
