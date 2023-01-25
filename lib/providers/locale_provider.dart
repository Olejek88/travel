import 'dart:ui';
import 'package:travel/providers/user_settings_provider.dart';
import '../main_lib.dart';

final currentLocaleProvider = StateProvider<Locale>((ref) {
  final deviceLocale = Locale(WidgetsBinding.instance.window.locale.languageCode.split("_").first);
  final fallback = AppLocalizations.supportedLocales.contains(deviceLocale) ? deviceLocale : const Locale('en');
  final language = ref.watch(sharedPrefsProvider)?.getString(settingsLanguageKey);
  debugPrint("current language = $language");
  return language == null ? fallback : Locale(language);
});

