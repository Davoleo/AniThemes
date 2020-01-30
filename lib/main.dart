import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF1DB954),
        primaryColorLight: Color(0xFF62EE82),
        primaryColorDark: Color(0xFF008925),
      ),
      home: App(),
    );
  }
}
