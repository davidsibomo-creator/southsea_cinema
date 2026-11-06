import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/Models/Movies.dart';

void main() {
  group('movie model test', () {

  

    test('format price returns pound sign and value rounded to two decimal places', () {
      const movie = Movie(
        id: 'Gravity',
        title: 'Gravity Falls',
        synopsis: 'A Crazy town',
        agerating: 'PG',
        runtime: '1hr 30min',
        screentime: '7:00pm',
        ticketprice: 5.0,
        posterimage: 'assets/images/bleachposter.jpg',
      );

      expect(movie.formattedPrice, '£5.00');
    });
  });
}