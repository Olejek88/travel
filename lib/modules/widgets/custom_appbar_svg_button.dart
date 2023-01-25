import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../main_lib.dart';

class CustomAppbarSVGButton extends StatelessWidget {
  const CustomAppbarSVGButton(
      {Key? key, this.semanticLabel = "",
        this.onPressed, required this.asset, this.horizontalPadding = 16, this.isLeading = false})
      : super(key: key);

  final String asset;
  final String semanticLabel;
  final bool isLeading;
  final double horizontalPadding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return defaultTargetPlatform == TargetPlatform.android
        ? materialLeadingButton(context)
        : cupertinoLeadingButton(context);
  }

  Widget cupertinoLeadingButton(BuildContext context) {
    return Semantics(
      label: semanticLabel,
      container: true,
      explicitChildNodes: true,
      child: CupertinoButton(
        padding:
            isLeading ? EdgeInsets.only(right: horizontalPadding, left: 6) : EdgeInsets.only(left: horizontalPadding),
        onPressed: onPressed,
        child: SvgPictureExtension.localAsset(
          asset,
          color: context.themeColors.mainText,
        ),
      ),
    );
  }

  Widget materialLeadingButton(BuildContext context) {
    return Semantics(
      label: semanticLabel,
      child: TextButton(
        style: TextButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: isLeading ? Alignment.centerLeft : Alignment.centerRight,
            padding: EdgeInsets.only(right: horizontalPadding)),
        onPressed: onPressed,
        child: SvgPictureExtension.localAsset(
          asset,
          color: context.themeColors.mainText,
        ),
      ),
    );
  }
}

class CustomAppBarSVGButtonFlexible extends StatelessWidget {
  const CustomAppBarSVGButtonFlexible({Key? key, this.onPressed, required this.asset, this.isLeading = false})
      : super(key: key);

  final Widget asset;
  final bool isLeading;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? materialLeadingButton(context) : cupertinoLeadingButton(context);
  }

  Widget cupertinoLeadingButton(BuildContext context) {
    return CupertinoButton(
      padding: isLeading ? const EdgeInsets.only(right: 16) : const EdgeInsets.only(left: 16),
      onPressed: onPressed,
      child: asset,
    );
  }

  Widget materialLeadingButton(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: asset,
    );
  }
}
