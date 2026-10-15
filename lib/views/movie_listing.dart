import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 1;
  String? _orderFeedback;

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
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        color: cinemaBackground,
        child: Column(
          children: [
            Text(
              'SINNERS (2025)',
              style: TextStyle(color: cinemaFontWhite, fontSize: 24),
            ),
            Text(
              'SINNERS (2025)',
              style: TextStyle(color: cinemaFontWhite, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
