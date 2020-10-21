import 'package:flutter/material.dart';
import 'package:plan_my_growth/pages/how_i_will_do_it.dart';
import 'package:plan_my_growth/pages/who_i_am.dart';
import 'package:plan_my_growth/pages/who_i_want_to_be.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => WhoIAm(),
        'who_i_am': (context) => WhoIAm(),
        'who_i_what_to_be': (context) => WhoIWantToBe(),
        'how_to_do_it': (context) => HowIWillDoIt()
      },
    );
  }
}
