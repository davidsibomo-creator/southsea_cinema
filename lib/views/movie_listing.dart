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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SINNERS (2025)',
              style: TextStyle(color: cinemaFontWhite, fontSize: 24, fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 50),
            Text(
              'Southsea Cinema Room',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'Note that Discounts / Membership Benefits will be applied once you have selected your tickets',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 20),
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
                Container(
                  width: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: cinemaSurface,
                    border: Border.all(color: cinemaBrand, width: 1.5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      isExpanded: true,
                      value: _ticketQuantity,
                      dropdownColor: cinemaSurface,
                      iconEnabledColor: cinemaFontWhite,
                      style: TextStyle(color: cinemaFontWhite, fontSize: 16),
                      items: List.generate(5, (index) {
                        final quantity = index + 1;
                        return DropdownMenuItem<int>(
                          value: quantity,
                          child: Text('$quantity'),
                        );
                      }),
                      onChanged: (newValue) {
                        setState(() {
                          _ticketQuantity = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Adult - £7.50',
                  style: TextStyle(color: cinemaFontWhite, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _orderFeedback =
                      'You have ordered $_ticketQuantity Adult ticket(s) for SINNERS (2025).';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: cinemaBrand,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              child: Text(
                'Add to Order',
                style: TextStyle(color: cinemaFontWhite, fontSize: 16),
              ),
            ),
            if (_orderFeedback != null) ...[
              const SizedBox(height: 20),
              Text(
                _orderFeedback!,
                style: TextStyle(color: cinemaFontWhite, fontSize: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }
}