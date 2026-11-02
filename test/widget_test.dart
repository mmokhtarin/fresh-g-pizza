import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fresh_g_pizza/main.dart';

void main() {
  testWidgets('App loads home page successfully', (WidgetTester tester) async {
    // Ignore headless image decoding issues in test environment
    final originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails details) {
      if (details.exceptionAsString().contains('resolving an image codec') ||
          details.exceptionAsString().contains('Invalid image data')) {
        return;
      }
      originalOnError?.call(details);
    };

    await tester.pumpWidget(const FreshGPizzaApp());

    // Verify that the title appears
    expect(find.text('Fresh G Pizza'), findsOneWidget);

    FlutterError.onError = originalOnError;
  });
}
