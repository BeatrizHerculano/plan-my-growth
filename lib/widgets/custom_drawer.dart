import 'package:flutter/material.dart';

getDrawer({title: String, BuildContext context}) {
  var pages = ['who_i_am', 'who_i_what_to_be', 'how_to_do_it'];
  return Drawer(
      child: ListView(
    children: [
      ListTile(
        title: Text("Quem eu sou agora?"),
        onTap: () => {Navigator.of(context).pushNamed(pages[0])},
      ),
      ListTile(
        title: Text("Quem eu quero ser?"),
        onTap: () => {Navigator.of(context).pushNamed(pages[1])},
      ),
      ListTile(
        title: Text("Como eu vou fazer isso?"),
        onTap: () => {Navigator.of(context).pushNamed(pages[2])},
      ),
    ],
  ));
}
