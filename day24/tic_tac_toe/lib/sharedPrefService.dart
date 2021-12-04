
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static String  playerXKey = "player_x"; 
  static String  playerOKey = "player_O"; 
  static String  playerDrawKey = "player_draw"; 

  static getValue(String key) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt(key) ?? 0;
  }

  static setValue(String key, int value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt(key, value);
  }
}