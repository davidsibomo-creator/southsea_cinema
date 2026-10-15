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
                    'Sinners',
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
                    'Twin brothers return to their hometown to start their lives over, where they encounter an evil presence that\'s been waiting to welcome them back.',
                    style: TextStyle(color: cinemaFontMuted),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                DropdownMenu<int>(
                  width: 132,
                  label: const Text('Tickets', style: TextStyle(color: cinemaFontWhite)),
                  initialSelection: _ticketQuantity,
                  dropdownMenuEntries: List.generate(
                    5,
                    (index) => DropdownMenuEntry<int>(
                      value: index + 1,
                      label: '${index + 1}',
                    ),
                  ),
                  onSelected: (int? value) {
                    if (value != null) {
                      setState(() {
                        _ticketQuantity = value;
                      });
                    }
                  },
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: () {
                    setState(() {
                      final ticketLabel =
                          _ticketQuantity == 1 ? 'ticket' : 'tickets';
                      _orderFeedback =
                          '$_ticketQuantity $ticketLabel added to your order.';
                    });
                  },
                  icon: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to order'),
                ),
              ],
            ),
            if (_orderFeedback != null) ...[
              const SizedBox(height: 8),
              Text(
                _orderFeedback!,
                style: const TextStyle(color: cinemaBrandLight),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
