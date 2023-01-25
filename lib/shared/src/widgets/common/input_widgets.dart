part of commons_ui;

const _inputDecoration = InputDecoration(
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  isDense: true,
  contentPadding: EdgeInsets.zero,
  labelText: null,
);

class PlainPlatformTextField extends HookConsumerWidget {
  const PlainPlatformTextField({
    Key? key,
    this.controller,
    this.autofocus = false,
    this.onChanged,
    this.onSubmitted,
    this.style,
    this.focusNode,
    this.cursorWidth = 2.0,
    this.obscureText = false,
    this.obscuringCharacter = "*",
    this.cursorColor,
    this.textInputAction,
    this.autofillHints,
  }) : super(key: key);

  final TextEditingController? controller;
  final bool autofocus;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextStyle? style;
  final FocusNode? focusNode;
  final Color? cursorColor;
  final double cursorWidth;
  final bool obscureText;
  final String obscuringCharacter;
  final TextInputAction? textInputAction;
  final List<String>? autofillHints;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return !kIsWeb && Platform.isIOS
        ? CupertinoTextField(
            controller: controller,
            decoration: null,
            autofocus: autofocus,
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            focusNode: focusNode,
            cursorColor: cursorColor,
            cursorWidth: cursorWidth,
            obscureText: obscureText,
            obscuringCharacter: obscuringCharacter,
            style: style,
            textInputAction: textInputAction,
            autofillHints: autofillHints,
          )
        : TextField(
            controller: controller,
            decoration: _inputDecoration,
            autofocus: autofocus,
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            focusNode: focusNode,
            cursorColor: cursorColor,
            cursorWidth: cursorWidth,
            obscureText: obscureText,
            obscuringCharacter: obscuringCharacter,
            style: style,
            textInputAction: textInputAction,
            autofillHints: autofillHints,
          );
  }
}
