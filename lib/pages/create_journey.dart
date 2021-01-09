import 'package:flutter/material.dart';
import 'package:plan_my_growth/widgets/add_journey_form.dart';

class CreateJourney extends StatelessWidget {
  static String route = "CreateJourney";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar novo item de jornada'),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: AddJourneyForm(),
        )),
      ),
    );
  }
}
