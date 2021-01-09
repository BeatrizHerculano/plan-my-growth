import 'package:flutter/material.dart';
import 'package:plan_my_growth/global.dart';
import 'package:plan_my_growth/models/journey.dart';
import 'package:plan_my_growth/pages/how_i_will_do_it.dart';
import 'package:plan_my_growth/widgets/custom_text_field.dart';

class AddJourneyForm extends StatefulWidget {
  @override
  _AddJourneyFormState createState() => _AddJourneyFormState();
}

class _AddJourneyFormState extends State<AddJourneyForm> {
  final initialDate = DateTime.now();
  final _formKey = GlobalKey<FormState>();
  final _titleKey = GlobalKey<CustomTextFieldState>();
  final _descriptionKey = GlobalKey<CustomTextFieldState>();
  String title;
  String description;
  DateTime dataLimite;
  String date = "";
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: initialDate,
        lastDate: initialDate.add(Duration(days: 10950)));
    if (picked != null)
      setState(() {
        dataLimite = picked;
        date = '${dataLimite.day}-${dataLimite.month}-${dataLimite.year}';
        print(date);
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Data selecionada " + date),
        ));
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomTextField(
              key: _titleKey,
              hint: "Coloque o titulo do seu objetivo",
              maxLines: 1,
              validations: {
                (String value) => value.isEmpty: "Esse campo é obrigatório"
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: CustomTextField(
              key: _descriptionKey,
              hint: "Descreva seu objetvo",
              maxLines: 3,
              validations: {
                (String value) => value.isEmpty: "Esse campo é obrigatório",
                (String value) => value != 'bia':
                    "Esse campo deve ser o meu apelido"
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: RaisedButton(
              child: Text('Secione uma data maxima para a entrega'),
              onPressed: () => _selectDate(context),
            ),
          ),
          FloatingActionButton(
            child: Icon(Icons.check),
            onPressed: () {
              if (date.isEmpty) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Voce deve selecionar uma data"),
                ));
              }
              title = _titleKey.currentState.text;
              description = _descriptionKey.currentState.text;

              if (_formKey.currentState.validate() && date.isNotEmpty) {
                Global.listJourney
                    .add(Journey(title, description, dataLimite, date));
                Navigator.of(context).pushNamed(HowIWillDoIt.route);
              }
            },
          )
        ]));
  }
}
