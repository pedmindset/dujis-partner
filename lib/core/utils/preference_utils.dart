import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

const String prefUserName = "pref_user_name";
const String prefUserId = "pref_user_id";
const String prefUserNumber = "pref_user_number";
const String prefUserAvatar = "pref_user_avatar";
const String prefUserDetail = "pref_user_detail";

const String prefAuthKey = "pref_auth_key";
const String prefUserEmail = "pref_user_email";
const String prefLoggedIn = "pref_logged_in";
const String prefIsShopper = "pref_is_shopper";

class PreferenceUtils {
  static SharedPreferences? _prefsInstance;
  // static Future<SharedPreferences> get _instance async =>
  //     _prefsInstance ??= await SharedPreferences.getInstance();

  static Future<SharedPreferences> init() async {
    _prefsInstance = await SharedPreferences.getInstance();
    return _prefsInstance!;
  }

  //sets
  static Future<bool> setBool(String key, bool value) async =>
      await _prefsInstance!.setBool(key, value);

  static Future<bool> setDouble(String key, double value) async =>
      await _prefsInstance!.setDouble(key, value);

  static Future<bool> setInt(String key, int value) async =>
      await _prefsInstance!.setInt(key, value);

  static Future<bool> setString(String key, String value) async =>
      await _prefsInstance!.setString(key, value);

  static Future<bool> setStringList(String key, List<String> value) async =>
      await _prefsInstance!.setStringList(key, value);

  //gets
  // static String? getString(String key, [String? defValue]) {
  //   return _prefsInstance!.getString(key) ?? defValue;
  // }

  // static bool getBool(String key, [bool? defValue]) {
  //   return _prefsInstance!.getBool(key) ?? defValue ?? false;
  // }

  // static int? getInt(String key, [int? defValue]) {
  //   return _prefsInstance!.getInt(key) ?? defValue;
  // }

  static bool getBool(String key, [bool? defValue]) =>
      _prefsInstance!.getBool(key) ?? defValue ?? false;

  static double getDouble(String key, [double? defValue]) =>
      _prefsInstance!.getDouble(key) ?? defValue ?? 0.0;

  static int getInt(String key, [int? defValue]) =>
      _prefsInstance!.getInt(key) ?? defValue ?? 0;

  static String getString(String key, [String? defValue]) =>
      _prefsInstance!.getString(key) ?? defValue ?? '';

  static List<String> getStringList(String key, [List<String>? defValue]) =>
      _prefsInstance!.getStringList(key) ?? defValue ?? [];

  //deletes..
  static Future<bool> remove(String key) async =>
      await _prefsInstance!.remove(key);

  static Future<bool> clear() async => await _prefsInstance!.clear();
}
