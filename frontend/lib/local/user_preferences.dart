import 'package:frontend/data/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences{

  static const _userId = 'user_id';
  static const _username = 'username';
  static const _dateOfBirth = 'date_of_birth';
  static const _gender = 'gender';
  static const _isLoggedIn = 'isLoggedIn';
  static const _token = 'token';

  void saveLoginInfo(int userId, String username, String dateOfBirth, Gender gender, String token) async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(_userId, userId);
    prefs.setString(_username, username);
    prefs.setString(_dateOfBirth, dateOfBirth);
    prefs.setString(_gender, gender.name);
    prefs.setBool(_isLoggedIn, true);
    prefs.setString(_token, token);
  }

  Future<Map<String, dynamic>?> getLoginInfo() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.getBool(_isLoggedIn) == true) {
      return {
        _userId: prefs.getInt(_userId),
        _username: prefs.getString(_username),
        _dateOfBirth: prefs.getString(_dateOfBirth),
        _gender: prefs.getString(_gender),
        _token: prefs.getString(_token)
      };
    }
    return null;
  }

  Future<SharedPreferences?> deleteLoginInfo()async{
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(_userId);
    await prefs.remove(_username);
    await prefs.remove(_dateOfBirth);
    await prefs.remove(_gender);
    await prefs.remove(_isLoggedIn);
    await prefs.remove(_token);
    return prefs;
  }
}