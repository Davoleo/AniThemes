import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AniThemes")),
      //--- APP DRAWER ---
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("AniThemes"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(title: Text("First Element"),),
            ListTile(title: Text("Second Element"),),
          ],
        ),
      ),

      body: Center(
        child: Text("Hello,World!"),
      ),
    );
  }
}
