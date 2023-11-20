import 'package:flutter/test.dart';
import 'package:flutter/flutter.dart';
import 'package:flutter_test/widget_tester.dart';
import '../lib/main.dart';
import '../lib/views/home_page.dart';

void main() {
  group('Home Page Widget Tests',() {
    testWidgets('Testing Home Page', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.byType(HomePage), finds.oneWidget);
    });
  });
}
