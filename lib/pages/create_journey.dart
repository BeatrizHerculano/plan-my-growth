import 'package:flutter/material.dart';

class CreateJourney extends StatefulWidget {
  @override
  _CreateJourneyState createState() => _CreateJourneyState();
}

class _CreateJourneyState extends State<CreateJourney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
          child: Form(
        child: TextFormField(),
      )),
    );
  }
}
