import 'package:flutter/material.dart';
import 'package:plan_my_growth/pages/how_i_will_do_it.dart';
import 'package:plan_my_growth/pages/who_i_am.dart';
import 'package:plan_my_growth/pages/who_i_want_to_be.dart';

getDrawer({BuildContext context}) {
  return Drawer(
      child: ListView(
    children: [
      ListTile(
        title: Text("Quem eu sou agora?"),
        onTap: () => {Navigator.of(context).pushNamed(WhoIAm.route)},
      ),
      ListTile(
        title: Text("Quem eu quero ser?"),
        onTap: () => {Navigator.of(context).pushNamed(WhoIWantToBe.route)},
      ),
      ListTile(
        title: Text("Como eu vou fazer isso?"),
        onTap: () => {Navigator.of(context).pushNamed(HowIWillDoIt.route)},
      ),
    ],
  ));
}
