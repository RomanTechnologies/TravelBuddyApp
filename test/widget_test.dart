import 'package:flutter/test.dart';
import 'package:flutter/flutter.dart';
import 'package:flutter_test/widget_tester.dart';
import '../lib/main.dart';

void main() {
  testWidgets('HomePage tests', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our title is present.
    expect(find.text('Travel Buddy'), finds.oneWidget);
  });
}
