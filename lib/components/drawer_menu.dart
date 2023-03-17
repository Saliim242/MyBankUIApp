import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: ListView(
        children: [
          DrawerHeader(child: Text("Heaader")),
          ListTile(
            leading: Icon(Icons.access_alarm_outlined),
            title: Text("YELLOW"),
          )
        ],
      ),
    );
  }
}
