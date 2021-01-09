import 'package:flutter/material.dart';
import 'package:plan_my_growth/widgets/custom_text_field.dart';

class WhoIWantToBeForm extends StatefulWidget {
  @override
  _WhoIWantToBeFormState createState() => _WhoIWantToBeFormState();
}

class _WhoIWantToBeFormState extends State<WhoIWantToBeForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hint: "Descreva quem você é agora e suas habilidades",
                  maxLines: 15,
                  validations: {
                    (String value) => value.isEmpty: "Esse campo é obrigatório"
                  },
                )),
            Container(
              alignment: Alignment.centerRight,
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
              child: FloatingActionButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    print("ta certo no futuro");
                  }
                },
                child: Icon(Icons.check),
              ),
            ),
          ],
        ));
  }
}
