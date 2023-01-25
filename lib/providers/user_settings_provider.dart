import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../modules/travel_app.dart';

const settingsLanguageKey = "currentLanguage";
final sharedPreferencesInstance = FutureProvider<SharedPreferences>((_) async => SharedPrefs.instance);
final sharedPrefsProvider = Provider<SharedPreferences?>((ref) {
  return ref.watch(sharedPreferencesInstance).valueOrNull;
});
