import 'package:flutter/material.dart';
import 'package:plan_my_growth/pages/create_journey.dart';
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
          "/": (context) => WhoIAm(),
          "WhoIAm": (context) => WhoIAm(),
          "WhoIWantToBe": (context) => WhoIWantToBe(),
          "HowIWillDoIt": (context) => HowIWillDoIt(),
          "CreateJourney": (context) => CreateJourney()
        });
  }
}
