import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LibrarySection extends StatefulWidget {
  const LibrarySection({Key? key}) : super(key: key);

  @override
  _LibrarySectionState createState() => _LibrarySectionState();
}

class _LibrarySectionState extends State<LibrarySection> {

  String? alUsername;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) => alUsername = prefs.getString("al_username"));
  }

  @override
  Widget build(BuildContext context) {
    if (this.alUsername == null) {
      return Center(
        child: CircularProgressIndicator(value: null),
      );
    }
    else return Container(
      child: Center(child: Text("WIP"),),
    );
  }
}
