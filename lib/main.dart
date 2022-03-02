import 'package:anithemes/screen/home.dart';
import 'package:anithemes/screen/settings.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  final ThemeData lightTheme = ThemeData(
    //brightness: Brightness.light,
    //primaryColor: Color(0xFF146EC8),
    //primaryColorLight: Color(0xFF65BCF4),
    //primaryColorDark: Color(0xFF114697),
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF146EC8), brightness: Brightness.light)
  );

  final ThemeData darkTheme = ThemeData(
    //brightness: Brightness.dark,
    // primaryColor: Color(0xFF80cbc4),
    // primaryColorLight: Color(0xFFb2fef7),
    // primaryColorDark: Color(0xFF4f9a94),
    // accentColor: Color(0xFFFF7451)
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF80cbc4), brightness: Brightness.dark)
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AniThemes',
      theme: this.lightTheme,
      darkTheme: this.darkTheme,
      home: MainScreen(),
      onGenerateRoute: (settings) => Router.getRoute(settings),
    );
  }
}

abstract class Router {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch(settings.name) {
      case "/settings":
        return MaterialPageRoute(builder: (context) => SettingsScreen(), settings: settings);
      case "/":
      default:
        return MaterialPageRoute(builder: (context) => MainScreen(), settings: settings);
    }
  }
}
