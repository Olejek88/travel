part of travel;

extension BuildContextExtension on BuildContext {
  AppLocalizations get i10n => AppLocalizations.of(this)!;

  bool isDarkMode() => MediaQuery.of(this).platformBrightness == Brightness.dark;

  IThemeColors get themeColors => isDarkMode() ? darkColors : lightColors;
  IThemeIcons get themeIcons => isDarkMode() ? darkIcons : lightIcons;

  TextStyle fontByStyle(ThemeTextStyle style) => ThemeFonts.fontOf(this, style);

  bool get isInModalPage {
    return ["RawModalRouter", "RawModalRouter"].contains(router.routeData.name);
  }

  Size getSizeByText(String text, TextStyle style) => (TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textScaleFactor: MediaQuery.of(this).textScaleFactor,
      textDirection: TextDirection.ltr)
    ..layout())
      .size;
}
