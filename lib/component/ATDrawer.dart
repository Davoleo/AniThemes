import 'package:flutter/material.dart';

class ATDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text("AniThemes", style: TextStyle(fontSize: 24),),
            decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
          ),
          ListTile(title: Text("First Element"),),
          ListTile(title: Text("Second Element"),),
        ],
      ),
    );
  }
}
