import 'package:flutter_test/flutter_test.dart';
import 'package:fresh_g_pizza/main.dart';

void main() {
  testWidgets('App loads home page successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const FreshGPizzaApp());

    // Verify that the title appears
    expect(find.text('Fresh G Pizza'), findsOneWidget);
  });
}
