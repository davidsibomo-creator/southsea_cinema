import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        color: cinemaSurface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'The Grand Budapest Hotel',
                    style: TextStyle(
                      color: cinemaFontWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.movie_outlined, color: cinemaBrandLight, size: 18),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'A hotel concierge and his young protégé become caught up in a caper involving a stolen painting.',
                    style: TextStyle(color: cinemaFontMuted),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
