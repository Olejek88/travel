part of travel;

abstract class IThemeColors {
  late final Color bottomBarUnselected;
  late final Color bottomBarBackground;
  late final Color primaryBackground;
  late final Color secondaryBackground;
  late final Color appBarMainColor;
  late final Color mainText;
  late final Color indicatorUnSelected;

  late final Color buttonBackground;
  late final Color unselectedButtonBorder;
  late final Color selectedButtonBorder;
  late final Color searchFieldBackground;
  late final Color modalBackground;

  late final Color dividerTop;
  late final Color dividerBottom;

  late final Color headlineMax;
  late final Color headline;
  late final Color listRowTitle;
  late final Color listRowSubtitle;
  late final Color defaultText;

  late final Color editTextBackground;
  late final Color tilesBackground;
  late final Color hiddenRowBackground;
  late final Color secondaryText;
  late final Color searchTextEmpty;
  late final Color searchIconColor;
  late final Color buttonSubtitleColor;

  late final Color borderInverse;
  late final Color tilesBackgroundInverse;
  late final Color textInverse;
  late final Color border;
  late final Color tilesDark;
}

class LightColors implements IThemeColors {
  @override
  Color headlineMax = const Color.fromARGB(255, 28, 28, 28);

  @override
  Color headline = const Color.fromARGB(255, 0, 0, 0);

  @override
  Color listRowTitle = const Color.fromARGB(255, 0, 0, 0);

  @override
  Color listRowSubtitle = const Color.fromARGB(255, 101, 101, 101);

  @override
  Color defaultText = const Color.fromARGB(255, 28, 28, 28);

  @override
  Color bottomBarUnselected = const Color.fromRGBO(43, 43, 43, 1);

  @override
  Color bottomBarBackground = const Color.fromRGBO(255, 255, 255, 0.94);

  @override
  Color primaryBackground = const Color.fromARGB(255, 249, 249, 249);

  @override
  Color secondaryBackground = const Color.fromARGB(255, 255, 255, 255);

  @override
  Color modalBackground = const Color.fromARGB(255, 255, 255, 255);

  @override
  Color appBarMainColor = const Color.fromARGB(255, 0, 0, 0);

  @override
  Color mainText = const Color.fromARGB(255, 0, 0, 0);

  @override
  Color indicatorUnSelected = const Color.fromARGB(255, 172, 172, 172);

  @override
  Color buttonBackground = AppColors.textWhite;

  @override
  Color selectedButtonBorder = AppColors.highlight;

  @override
  Color unselectedButtonBorder = AppColors.unselectedBorderColor;

  @override
  Color dividerTop = AppColors.dividerTopColorLight;

  @override
  Color dividerBottom = AppColors.dividerBottomColorLight;

  @override
  Color tilesBackground = const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color hiddenRowBackground = const Color.fromRGBO(249, 249, 249, 1);

  @override
  Color editTextBackground = const Color.fromRGBO(240, 240, 240, 1);

  @override
  Color secondaryText = const Color.fromRGBO(133, 133, 133, 1);

  @override
  Color searchTextEmpty = const Color.fromRGBO(64, 64, 64, 1);

  @override
  Color border = const Color.fromRGBO(205, 205, 205, 1);

  @override
  Color borderInverse = const Color.fromRGBO(151, 151, 151, 0);

  @override
  Color textInverse = const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color tilesBackgroundInverse = const Color.fromRGBO(51, 51, 51, 1);

  @override
  Color buttonSubtitleColor = const Color.fromRGBO(66, 64, 64, 1);

  @override
  Color searchFieldBackground = const Color.fromRGBO(244, 244, 245, 1);

  @override
  Color searchIconColor = const Color.fromRGBO(64, 64, 64, 1);

  @override
  Color tilesDark = const Color.fromRGBO(205, 205, 205, 1);
}

final lightColors = LightColors();

class DarkColors implements IThemeColors {
  @override
  Color headlineMax = const Color.fromARGB(255, 209, 209, 209);

  @override
  Color headline = const Color.fromARGB(255, 209, 209, 209);

  @override
  Color listRowTitle = const Color.fromARGB(255, 209, 209, 209);

  @override
  Color listRowSubtitle = const Color.fromARGB(255, 186, 186, 186);

  @override
  Color defaultText = const Color.fromARGB(255, 209, 209, 209);

  @override
  Color bottomBarUnselected = const Color.fromRGBO(153, 153, 153, 1);

  @override
  Color bottomBarBackground = const Color.fromRGBO(0, 0, 0, 1);

  @override
  Color primaryBackground = const Color.fromARGB(255, 0, 0, 0);

  @override
  Color secondaryBackground = const Color.fromARGB(255, 28, 28, 30);

  @override
  Color modalBackground = const Color.fromARGB(255, 16, 16, 16);

  @override
  Color appBarMainColor = const Color.fromARGB(255, 216, 216, 216);

  @override
  Color mainText = const Color.fromARGB(255, 255, 255, 255);

  @override
  Color indicatorUnSelected = const Color.fromARGB(255, 77, 77, 77);

  @override
  Color buttonBackground =  AppColors.tilesDark;

  @override
  Color selectedButtonBorder =  AppColors.highlight;

  @override
  Color unselectedButtonBorder = AppColors.tilesDark;

  @override
  Color dividerTop = AppColors.dividerTopColorDark;

  @override
  Color dividerBottom = AppColors.dividerBottomColorDark;

  @override
  Color tilesBackground = const Color.fromRGBO(44, 44, 46, 1);

  @override
  Color hiddenRowBackground = const Color.fromRGBO(69, 69, 69, 1);

  @override
  Color editTextBackground = const Color.fromRGBO(44, 44, 46, 1);

  @override
  Color secondaryText = const Color.fromRGBO(205, 205, 205, 1);

  @override
  Color searchTextEmpty = const Color.fromRGBO(205, 205, 205, 1);

  @override
  Color border = const Color.fromRGBO(151, 151, 151, 0);

  @override
  Color borderInverse = const Color.fromRGBO(151, 151, 151, 1);

  @override
  Color textInverse = const Color.fromRGBO(0, 0, 0, 1);

  @override
  Color tilesBackgroundInverse = const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color buttonSubtitleColor = const Color.fromRGBO(205, 205, 205, 1);

  @override
  Color searchFieldBackground = AppColors.tilesDark;

  @override
  Color searchIconColor = const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color tilesDark = const Color.fromRGBO(44, 44, 46, 1);
}

final darkColors = DarkColors();
