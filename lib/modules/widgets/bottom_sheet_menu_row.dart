import 'dart:math';

import '../../main_lib.dart';

class BottomSheetMenuRow extends StatelessWidget {
  const BottomSheetMenuRow(
      {Key? key,
        this.id,
        required this.title,
        this.prefixIcon,
        this.onClicked,
        this.paddings,
      })
      : super(key: key);

  final String? id;
  final String title;
  final EdgeInsets? paddings;
  final Widget? prefixIcon;
  final void Function()? onClicked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      key: Key(id ?? Random(1<<16).toString()),
      child: Padding(
          padding: paddings ?? EdgeInsets.zero,
          child: HStack(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                SizedBox(width: 50, child: (prefixIcon != null) ? prefixIcon! : const SizedBox()),
                Expanded(
                  child: Text(title, style: context.fontByStyle(ThemeTextStyle.body1)),
                ),
              ],
          ),
      ),
    );
  }
}
