import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:plan_my_growth/main.dart';

void main() {
  testWidgets('Page test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Quem eu quero ser?'), findsOneWidget);
    expect(find.byType(TextFormField), findsOneWidget);
  });
}
