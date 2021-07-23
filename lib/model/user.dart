import 'package:anithemes/utils.dart';

late final User? _user;

class User {
  String name;
  late int id;
  late Uri avatar;

  User(this.name);

  static User getInstance(String name) {
    if (_user == null) {
      _user = User(name);
      NetworkUtils.makeALRequest("lists_user_init").then((jsonMap) {
        _user!.id = jsonMap["data"]["User"]["id"];
        _user!.avatar = Uri.parse(jsonMap["data"]["User"]["avatar"]["medium"]);
      });
    }

    return _user!;
  }
}