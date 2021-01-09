import 'package:flutter/material.dart';
import 'package:plan_my_growth/widgets/custom_drawer.dart';
import 'package:plan_my_growth/widgets/who_i_am_form.dart';

class WhoIAm extends StatelessWidget {
  static String route = "WhoIAm";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quem eu sou agora?'),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Center(
          child: WhoIAmForm(),
        )),
      ),
      drawer: getDrawer(context: context),
    );
  }
}
