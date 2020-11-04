import 'package:flutter/material.dart';

class TestableWidget extends StatelessWidget {
  final Widget child;

  const TestableWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: child);
  }
}
