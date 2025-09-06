import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _instance;
  static bool isOwner = false;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
    isOwner = _instance.getBool("isOwner") ?? false;
  }

  static void setOwner(bool value) {
    isOwner = value;
    _instance.setBool("isOwner", value);
  }


  static Future<void> setString(String key, String value) async {
    await _instance.setString(key, value);
  }

  static String getString(String key) {
    return _instance.getString(key) ?? "";
  }
}
