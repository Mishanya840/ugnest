import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class BasePreferences {
  static const String _authTokenKey = "authTokenKey_";

  static Future<String> getAuthToken() async => (await SharedPreferences.getInstance()).get(_authTokenKey);
  static Future<void> setAuthToken(String token) async => (await SharedPreferences.getInstance()).setString(_authTokenKey, token);

}
