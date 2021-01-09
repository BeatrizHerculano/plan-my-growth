import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:plan_my_growth/main.dart';

void main() {
  testWidgets('Page test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Quem eu sou agora?'), findsOneWidget);
    expect(find.byType(TextFormField), findsOneWidget);
  });
}
