import 'package:flutter/material.dart';
import 'package:plan_my_growth/global.dart';
import 'package:plan_my_growth/models/journey.dart';

class CreateJourney extends StatefulWidget {
  @override
  _CreateJourneyState createState() => _CreateJourneyState();
}

class _CreateJourneyState extends State<CreateJourney> {
  final initialDate = DateTime.now();
  String date = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar novo item de jornada'),
      ),
      body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(children: [
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Text(date),
                    FlatButton(
                      child: Text('Secione uma data de entrega'),
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: initialDate,
                                firstDate: initialDate,
                                lastDate:
                                    initialDate.add(Duration(days: 10950)))
                            .then((value) => {
                                  setState(() {
                                    date = value.toString();
                                  })
                                });
                      },
                    ),
                  ],
                ),
                FloatingActionButton(
                  child: Icon(Icons.check),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Global.listJourney.add(Journey('teste', 'teste', false));
                      Navigator.of(context).pushNamed('how_to_do_it');
                    }
                  },
                )
              ]))),
    );
  }
}
