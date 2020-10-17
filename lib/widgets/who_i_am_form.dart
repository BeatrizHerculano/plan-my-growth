import 'package:flutter/material.dart';

class WhoIAmForm extends StatefulWidget {
  @override
  _WhoIAmFormState createState() => _WhoIAmFormState();
}

class _WhoIAmFormState extends State<WhoIAmForm> {
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
              child: TextFormField(
                maxLines: 20,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
              child: FloatingActionButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    print("ta certo");
                  }
                },
                child: Icon(Icons.check),
              ),
            ),
          ],
        ));
  }
}
