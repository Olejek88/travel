import 'package:flutter/cupertino.dart';
import '../../main_lib.dart';

class ObjectPicker extends StatelessWidget {
  final String buttonTitle;
  final int initialItem;
  final List<Widget> items;
  final void Function(int)? onSelectedItemChanged;
  final void Function()? onPressed;

  const ObjectPicker({
    Key? key,
    required this.buttonTitle,
    this.onPressed,
    required this.initialItem,
    required this.items,
    this.onSelectedItemChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VStack(
        padding: const EdgeInsets.all(20),
        children: [
          HStack(mainAxisAlignment: MainAxisAlignment.end, children: [
            GestureDetector(
                onTap: () {
                  context.popRoute();
                },
                child: SvgPictureExtension.localAsset(
                  "assets_core/icons/iconCloseBig.svg",
                  color: context.themeColors.mainText,
                )),
          ]),
          Expanded(
            child: CupertinoTheme(
                data: CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(pickerTextStyle: context.fontByStyle(ThemeTextStyle.pickerTime))),
                child: CupertinoPicker(
                    backgroundColor: context.themeColors.primaryBackground,
                    scrollController: FixedExtentScrollController(initialItem: initialItem),
                    onSelectedItemChanged: (value) {
                      if (onSelectedItemChanged != null) onSelectedItemChanged!(value);
                    },
                    diameterRatio: 20.5,
                    itemExtent: 40.0,
                    children: items)),
          ),
          //ButtonPrimary(label: buttonTitle, onPressed: onPressed),
        ],
      ),
    );
  }
}
