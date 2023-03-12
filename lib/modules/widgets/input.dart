import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../main_lib.dart';

final _passwordFieldIsObscured = StateProvider<bool>((ref) => true);

class InputText extends HookConsumerWidget {
  final String hintText;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final TextEditingController? controller;
  final bool autofocus;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onSubmitted;
  final List<String>? autofillHints;
  final FocusNode focusNode;
  final bool isPassword;
  final List<String> dropDownOptions;
  final bool enabled;
  final String informationFieldText;
  final void Function()? onTrailingIconClick;
  final void Function()? onTap;
  final void Function()? onInformationFieldClick;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool showClearButton;

  const InputText(
      {Key? key,
      required this.hintText,
      this.controller,
      this.autofocus = false,
      this.textInputAction,
      this.onSubmitted,
      this.autofillHints,
      this.isPassword = false,
      required this.focusNode,
      this.leadingIcon,
      this.trailingIcon,
      this.dropDownOptions = const [],
      this.informationFieldText = "",
      this.enabled = true,
      this.onTrailingIconClick,
      this.onTap,
      this.onInformationFieldClick,
      this.onChanged,
      this.keyboardType,
      this.showClearButton = false
      }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editingController = controller ?? useTextEditingController();
    return GestureDetector(
        onTap: () => focusNode.requestFocus(),
        child: VStack(children: [
          Container(
            height: 51,
            decoration: BoxDecoration(
              border: Border.all(color: context.themeColors.border, width: 1),
              borderRadius: BorderRadius.circular(6),
              shape: BoxShape.rectangle,
            ),
            padding: const EdgeInsets.only(right: 15),
            child: HStack(spacing: 0, children: [
              const SizedBox(width: 15),
              leadingIcon != null
                  ? Container(height: 30, alignment: Alignment.center, child: leadingIcon!)
                  : const SizedBox(),
              SizedBox(width: (!kIsWeb && Platform.isIOS) ? 8 : 15), // 15-6 (6 - default padding by cupertinoTextField)
              //Text(showMultiplesLines.toString()),
              Expanded(
                  child: isPassword == true
                      ? _PasswordField(
                          controller: editingController,
                          focusNode: focusNode,
                          autofocus: autofocus,
                          hintText: hintText,
                          textInputAction: textInputAction,
                          onSubmitted: onSubmitted,
                          autofillHints: autofillHints,
                        )
                      : PlainPlatformTextField(
                          keyboardType: keyboardType,
                          controller: editingController,
                          focusNode: focusNode,
                          style: context
                              .fontByStyle(ThemeTextStyle.body)
                              .copyWith(color: context.themeColors.mainText),
                          hintText: hintText,
                          autofocus: autofocus,
                          enabled: enabled,
                          textInputAction: textInputAction,
                          onSubmitted: onSubmitted,
                          onChanged: onChanged,
                          onTap: onTap,
                          autofillHints: autofillHints,
                          showClearButton: showClearButton,
                        )),
              dropDownOptions.isNotEmpty
                  ? DropdownButton<String>(
                      underline: const SizedBox(),
                      items: dropDownOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (onSubmitted != null && value != null) onSubmitted!(value);
                      },
                    )
                  : const SizedBox(),
              trailingIcon != null
                  ? GestureDetector(
                      onTap: onTrailingIconClick,
                      child: Container(width: 20, alignment: Alignment.center, child: trailingIcon!))
                  : const SizedBox(),
            ]),
          ),
        ]));
  }
}

class _PasswordField extends ConsumerWidget {
  final TextEditingController? controller;
  final FocusNode focusNode;
  final bool autofocus;
  final String hintText;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onSubmitted;
  final List<String>? autofillHints;

  const _PasswordField(
      {this.controller,
      required this.focusNode,
      this.autofocus = false,
      this.textInputAction,
      this.hintText = "",
      this.onSubmitted,
      this.autofillHints});

  @override
  Widget build(BuildContext context, ref) {
    var isObscured = ref.read(_passwordFieldIsObscured.state);
    return HStack(
      children: [
        Expanded(
            child: PlainPlatformTextField(
          focusNode: focusNode,
          controller: controller,
          hintText: hintText,
          obscureText: ref.watch(_passwordFieldIsObscured),
          obscuringCharacter: "*",
          style: context.fontByStyle(ThemeTextStyle.body).copyWith(color: context.themeColors.mainText),
          autofocus: autofocus,
          autocorrect: false,
          textInputAction: textInputAction,
          onSubmitted: onSubmitted,
          autofillHints: autofillHints,
        )),
        PlainPlatformButton(
          onPressed: () => {isObscured.state = !isObscured.state},
          child: SvgPicture.asset(isObscured.state ? "assets/icons/hidePassword.svg" : "assets/icons/showPassword.svg",
              color: context.themeColors.border),
        )
      ],
    );
  }
}

class PlainPlatformTextField extends HookConsumerWidget {
   const PlainPlatformTextField(
      {Key? key,
      this.controller,
      this.autofocus = false,
      this.hintText = "",
      this.onChanged,
      this.onSubmitted,
      this.style,
      this.focusNode,
      this.obscureText = false,
      this.obscuringCharacter = "*",
      this.textInputAction,
      this.enabled = true,
      this.autofillHints,
      this.autocorrect = false,
      this.onTap,
      this.keyboardType,
      this.showClearButton = false
      }) : super(key: key);

  final TextEditingController? controller;
  final bool autofocus;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextStyle? style;
  final FocusNode? focusNode;
  final bool obscureText;
  final bool enabled;
  final String obscuringCharacter;
  final String hintText;
  final bool autocorrect;
  final TextInputAction? textInputAction;
  final List<String>? autofillHints;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  final bool showClearButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return !kIsWeb && Platform.isIOS
        ? Theme(
            data: ThemeData(
              primarySwatch: enabled ? null : Colors.blue,
            ),
            child: CupertinoTextField(
              controller: controller,
              decoration: null,
              placeholder: hintText,
              placeholderStyle: context.fontByStyle(ThemeTextStyle.body),
              autofocus: autofocus,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              focusNode: focusNode,
              obscureText: obscureText,
              cursorColor: context.themeColors.border,
              cursorWidth: 2,
              obscuringCharacter: obscuringCharacter,
              style: style?.copyWith(height: 1.2),
              enabled: enabled,
              autocorrect: autocorrect,
              onTap: onTap,
              textInputAction: textInputAction,
              keyboardType: keyboardType,
              autofillHints: autofillHints,
              clearButtonMode: showClearButton ? OverlayVisibilityMode.always : OverlayVisibilityMode.never,
            ),
          )
        : TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              hintStyle: context.fontByStyle(ThemeTextStyle.body),
              hintText: hintText,
              suffixIcon: showClearButton
                  ? IconButton(
                      onPressed: () => controller?.clear(),
                      icon: const Icon(Icons.clear),
                    )
                  : null,
            ),
            textAlignVertical: showClearButton ? TextAlignVertical.center : null,
            autofocus: autofocus,
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            focusNode: focusNode,
            obscureText: obscureText,
            obscuringCharacter: obscuringCharacter,
            style: style,
            autocorrect: autocorrect,
            enabled: enabled,
            cursorColor: context.themeColors.mainText,
            cursorWidth: 2,
            textInputAction: textInputAction,
            onTap: onTap,
            autofillHints: autofillHints,
          );
  }
}
