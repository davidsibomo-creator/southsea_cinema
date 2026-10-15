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
  String _bookingMessage = '';

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
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        color: cinemaBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SINNERS (2025)',
              style: TextStyle(
                color: cinemaFontWhite,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '137 mins  |  Rated 15',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Trying to leave their troubled lives behind, twin brothers return '
              'to their hometown to start again, only to discover that a greater '
              'evil is waiting to welcome them back.',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Southsea Cinema Room',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Note that Discounts / Membership Benefits will be applied once you have selected your tickets',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Select Quantities (Up to 5 in total)',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 30),
            Text(
              'Tickets',
              style: TextStyle(
                color: cinemaFontWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                DropdownMenu<int>(
                  width: 100,
                  initialSelection: _ticketQuantity,
                  textStyle: TextStyle(color: cinemaFontWhite, fontSize: 16),
                  menuStyle: MenuStyle(
                    backgroundColor: WidgetStatePropertyAll(cinemaSurface),
                  ),
                  inputDecorationTheme: InputDecorationTheme(
                    filled: true,
                    fillColor: cinemaSurface,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: cinemaBrand, width: 1.5),
                    ),
                  ),
                  onSelected: (int? value) {
                    if (value != null) {
                      setState(() {
                        _ticketQuantity = value;
                        print('Tickets selected: $_ticketQuantity');
                      });
                    }
                  },
                  dropdownMenuEntries: List.generate(5, (index) {
                    final quantity = index + 1;
                    return DropdownMenuEntry<int>(
                      value: quantity,
                      label: '$quantity',
                      style: MenuItemButton.styleFrom(
                        foregroundColor: cinemaFontWhite,
                      ),
                    );
                  }),
                ),
                const SizedBox(width: 12),
                Text(
                  'Adult - £7.50',
                  style: TextStyle(color: cinemaFontWhite, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Tickets selected: $_ticketQuantity',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _bookingMessage =
                      'Added $_ticketQuantity tickets to the order';
                });
                print(_bookingMessage);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: cinemaBrand,
                foregroundColor: cinemaFontWhite,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('Add to order', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 20),
            Text(
              _bookingMessage,
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}