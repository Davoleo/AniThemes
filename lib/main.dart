import 'package:anithemes/screen/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFF1DB954),
    primaryColorLight: Color(0xFF62EE82),
    primaryColorDark: Color(0xFF008925),
  );

  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF80cbc4),
    primaryColorLight: Color(0xFFb2fef7),
    primaryColorDark: Color(0xFF4f9a94),
    accentColor: Color(0xFFFF7961)
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AniThemes',
      theme: this.darkTheme,
      home: MainScreen(),
    );
  }
}
