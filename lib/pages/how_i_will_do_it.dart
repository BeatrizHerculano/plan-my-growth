import 'package:flutter/material.dart';
import 'package:plan_my_growth/global.dart';
import 'package:plan_my_growth/widgets/custom_drawer.dart';

class HowIWillDoIt extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HowIWillDoItState();
  }
}

class HowIWillDoItState extends State<HowIWillDoIt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Como eu vou fazer isso?'),
      ),
      body: Container(
        child: Center(
            child: ListView.builder(
                itemCount: Global.listJourney.length,
                itemBuilder: (context, index) {
                  var currJourney = Global.listJourney[index];
                  return ListTile(
                    leading: Checkbox(
                      value: currJourney.done,
                      onChanged: (newValue) {
                        setState(() {
                          Global.listJourney[index].done = newValue;
                        });
                      },
                    ),
                    title: Text(currJourney.title),
                    subtitle: Text(currJourney.description),
                  );
                })),
      ),
      drawer: getDrawer(context: context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('create_journey');
        },
      ),
    );
  }
}
