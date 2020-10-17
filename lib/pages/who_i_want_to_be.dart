import 'package:flutter/material.dart';
import 'package:plan_my_growth/widgets/custom_drawer.dart';
import 'package:plan_my_growth/widgets/who_i_want_to_be_form.dart';

class WhoIWantToBe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quem eu quero ser'),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Center(
          child: WhoIWantToBeForm(),
        )),
      ),
      drawer: getDrawer(context: context),
    );
  }
}
