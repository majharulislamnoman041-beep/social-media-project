import 'package:shared_preferences/shared_preferences.dart';

class MyPrefs {
  Future<void> setData(String name, String pp) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    prefs.setString('pass', pp);
  }

  Future<String?> getData(String d) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(d);
  }
}
