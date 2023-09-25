import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  static const baseUrl = "astrology.f2fdigital.in";

  static Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') ?? '';
  }
}