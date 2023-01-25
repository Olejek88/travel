part of travel;

extension SvgPictureExtension on SvgPicture {
  static Widget localAsset(
    String assetName, {
    Key? key,
    matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    fit = BoxFit.contain,
    alignment = Alignment.center,
    allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    excludeFromSemantics = false,
    clipBehavior = Clip.hardEdge,
    cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      width: width,
      height: height,
      color: color,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
      colorBlendMode: colorBlendMode,
      placeholderBuilder: placeholderBuilder,
      cacheColorFilter: cacheColorFilter,
      excludeFromSemantics: excludeFromSemantics,
      semanticsLabel: semanticsLabel,
      //theme: theme,
      package: package,
    );
  }
}
