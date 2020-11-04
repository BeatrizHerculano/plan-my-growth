import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plan_my_growth/pages/create_journey.dart';

import '../testable_widget.dart';

void main() {
  testWidgets('HowIWillDoIt page test', (WidgetTester tester) async {
    await tester.pumpWidget(TestableWidget(
      child: CreateJourney(),
    ));

    expect(find.text('Adicionar novo item de jornada'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));
  });
}
