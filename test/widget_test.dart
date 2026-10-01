import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

void main() {
  testWidgets('Basic app loading test', (WidgetTester tester) async {
    await tester.pumpWidget(const SouthseaCinemaApp());
    expect(find.text('Welcome to Southsea Cinema'), findsOneWidget);
  });

  testWidgets('Booking feedback reflects the selected ticket quantity', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: MovieListing()));

    await tester.tap(find.byType(DropdownMenu<int>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('3').last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Add to order'));
    await tester.pumpAndSettle();

    expect(find.text('3 tickets added to your order.'), findsOneWidget);
  });
}
