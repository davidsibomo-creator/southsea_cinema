import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';

void main() {
 
  group('App smoke tests', () {
    testWidgets('App displays MenuScreen as home', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(find.text('Southsea Cinema'), findsOneWidget);
    });

     testWidgets('Display Movie names and prices', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(find.text('Sinners'), findsOneWidget);
      expect(find.text('Price: £7.50'), findsOneWidget);
      expect(find.text('Bleach Thousand Year Blood War'), findsOneWidget);
      expect(find.text('Price: £4.50'), findsOneWidget);
       expect(find.text('Book'), findsNWidgets(2));
    });
  });
}
