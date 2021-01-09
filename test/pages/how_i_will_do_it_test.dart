import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:plan_my_growth/pages/how_i_will_do_it.dart';

import '../testable_widget.dart';

void main() {
  testWidgets('HowIWillDoIt page test', (WidgetTester tester) async {
    await tester.pumpWidget(TestableWidget(
      child: HowIWillDoIt(),
    ));

    expect(find.text('Como eu vou fazer isso?'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
  });
}
