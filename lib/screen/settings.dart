import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        child: SettingsList(
          contentPadding: EdgeInsets.only(top: 16),
          darkBackgroundColor: Colors.transparent,
          sections: [
          SettingsSection(
            title: "Account",
            tiles: [
              SettingsTile(
                title: "AniList Account Name",
                leading: Icon(Icons.account_circle),
                onPressed: (buildContext) async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  String? choice = await showDialog<String>(context: context, builder: (buildContext) {
                    final controller = TextEditingController(text: prefs.containsKey("al_username") ? prefs.getString("al_username") : null);

                    return SimpleDialog(
                      title: Text("AniList Username"),
                      contentPadding: EdgeInsets.symmetric(horizontal: 32),
                      children: [
                        TextField(
                          controller: controller,
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 16,)
                        TextButton(
                          onPressed: () {
                            return Navigator.pop(context, controller.text);
                          },
                          child: Text("OK"),
                        ),
                      ],
                    )
                  });

                  if (choice != null)
                    prefs.setString("al_username", choice);
                },
              )
            ],
          )],
        ),
      ),
    );
  }
}
