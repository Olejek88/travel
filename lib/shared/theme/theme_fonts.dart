part of travel;

enum ThemeTextStyle {
  headlineMax,
  headline,
  listRowTitle,
  listRowSubtitle,
  defaultText,
  title1,
  title2,
  title3,
  title4,
  date,
  headTitle,
  select,
  body1,
  button,
  headLeft,
  headRight,
  link,
  title5,
  body,
  body2,
  searchTextEmpty,
  body3,
  centerGap,
  bottomText,
  circleButtonUnderline,
  sliderTitle,
  sliderSubTitle,
  sliderText,
  pickerTime,
  pickerConfirm,
  buttonDefault,
  buttonDefaultInverse
}

abstract class ThemeFonts {
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.w700;

  static TextStyle fontOf(BuildContext context, ThemeTextStyle style) =>
      GoogleFonts.lato(textStyle: _fontOf(context, style));

  static TextStyle _fontOf(BuildContext context, ThemeTextStyle style) {
    final color = context.themeColors;
    switch (style) {
      case ThemeTextStyle.headlineMax:
        return TextStyle(fontSize: 26, fontWeight: bold, color: color.headlineMax);
      case ThemeTextStyle.headline:
        return TextStyle(fontSize: 20, fontWeight: medium, color: color.headline);
      case ThemeTextStyle.listRowTitle:
        return TextStyle(fontSize: 14, fontWeight: medium, color: color.listRowTitle);
      case ThemeTextStyle.listRowSubtitle:
        return TextStyle(fontSize: 12, fontWeight: FontWeight.w300, letterSpacing: -0.41, color: color.listRowSubtitle);
      case ThemeTextStyle.defaultText:
        return TextStyle(fontSize: 14, fontWeight: FontWeight.w300, height: 1.7143, color: color.defaultText);
      case ThemeTextStyle.title1:
        return TextStyle(color: color.defaultText, fontWeight: bold, fontSize: 28, height: 34 / 28);
      case ThemeTextStyle.title2:
        return TextStyle(color: color.defaultText, fontWeight: regular, fontSize: 28);
      case ThemeTextStyle.title3:
        return TextStyle(color: color.defaultText, fontWeight: FontWeight.w400, fontSize: 24, height: 34 / 24);
      case ThemeTextStyle.title4:
        return TextStyle(color: color.mainText, fontWeight: bold, fontSize: 16);
      case ThemeTextStyle.date:
        return TextStyle(color: color.defaultText, fontWeight: FontWeight.w300, fontSize: 21);
      case ThemeTextStyle.headTitle:
        return TextStyle(color: color.defaultText, fontWeight: bold, fontSize: 18, height: 22 / 18);
      case ThemeTextStyle.select:
        return const TextStyle(color: AppColors.highlight, fontWeight: bold, fontSize: 16);
      case ThemeTextStyle.body1:
        return TextStyle(color: color.headline, fontWeight: regular, fontSize: 16, height: 22/16);
      case ThemeTextStyle.button:
        return const TextStyle(color: AppColors.textWhite, fontWeight: light, fontSize: 16);
      case ThemeTextStyle.headLeft:
        return TextStyle(color: color.defaultText, fontWeight: regular, fontSize: 16);
      case ThemeTextStyle.headRight:
        return TextStyle(color: color.defaultText, fontWeight: regular, fontSize: 16);
      case ThemeTextStyle.link:
        return const TextStyle(color: AppColors.highlight, fontWeight: light, fontSize: 16);
      case ThemeTextStyle.title5:
        return TextStyle(color: color.defaultText, fontWeight: bold, fontSize: 14);
      case ThemeTextStyle.body2:
        return TextStyle(color: color.secondaryText, fontWeight: regular, fontSize: 13, height: 17 / 13);
      case ThemeTextStyle.searchTextEmpty:
        return TextStyle(color: color.searchTextEmpty, fontWeight: regular, fontSize: 15);
      case ThemeTextStyle.body3:
        return TextStyle(color: color.secondaryText, fontWeight: regular, fontSize: 12);
      case ThemeTextStyle.body:
        return TextStyle(color: color.buttonSubtitleColor, fontWeight: regular, fontSize: 12);
      case ThemeTextStyle.centerGap:
        return const TextStyle(color: AppColors.textGrey, fontWeight: regular, fontSize: 12);
      case ThemeTextStyle.bottomText:
        return const TextStyle(color: AppColors.textGrey, fontWeight: light, fontSize: 10);
      case ThemeTextStyle.circleButtonUnderline:
        return const TextStyle(color: AppColors.textGrey, fontWeight: light, fontSize: 10);
      case ThemeTextStyle.sliderTitle:
        return const TextStyle(color: AppColors.textWhite, fontWeight: regular, fontSize: 28);
      case ThemeTextStyle.sliderSubTitle:
        return const TextStyle(color: Colors.black, fontWeight: bold, fontSize: 18);
      case ThemeTextStyle.sliderText:
        return const TextStyle(color: Colors.black, fontWeight: regular, fontSize: 11);
      case ThemeTextStyle.pickerTime:
        return TextStyle(color: color.mainText, fontWeight: bold, fontSize: 18);
      case ThemeTextStyle.pickerConfirm:
        return TextStyle(color: color.defaultText, fontWeight: bold, fontSize: 16);
      case ThemeTextStyle.buttonDefault:
        return TextStyle(fontWeight: medium, fontSize: 16, height: 16 / 16, color: color.mainText);
      case ThemeTextStyle.buttonDefaultInverse:
        return TextStyle(fontWeight: medium, fontSize: 16, height: 16 / 16, color: color.textInverse);
    }
  }
}
