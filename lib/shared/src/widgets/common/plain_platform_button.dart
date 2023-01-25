part of commons_ui;

class PlainPlatformButton extends StatelessWidget {
  const PlainPlatformButton({Key? key, required this.child, this.onPressed, this.padding = EdgeInsets.zero})
      : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return !kIsWeb && Platform.isIOS ? buildIOS(context) : buildAndroid(context);
  }

  Widget buildIOS(BuildContext context) {
    return CupertinoButton(
      child: child,
      onPressed: onPressed,
      minSize: 0,
      padding: padding,
    );
  }

  Widget buildAndroid(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(padding),
        minimumSize: MaterialStateProperty.all(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: child,
    );
  }
}
