import 'package:southsea_cinema/Models/Movies.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return  [
      Movie(
        id: 'Sinner',
        title: 'Sinners',
        synopsis: 'Trying to leave their troubled lives behind, twin brothers return to their hometown to start again, only to discover that an even greater evil is waiting to welcome them back.',
        agerating: '18',
        runtime: '1h 45m',
        screentime: '7:30pm',
        ticketprice: 7.50,
        posterimage: 'assets/images/SinnersPoster.jpg', 
      ),

      Movie(
        id: 'Bleacher',
        title: 'Bleach Thousand Year Blood War',
        synopsis: 'Ichigio and Aizen face off against the quincy king, YHWACH',
        agerating: '18',
        runtime: '1h 20m',
        screentime: '8:30pm',
        ticketprice: 4.50,
        posterimage: 'assets/images/BleachPoster.jpg', 
      )
     
    ];
  }
}