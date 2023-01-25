import '../../main_lib.dart';

class BoxButton extends StatelessWidget {
  final Color? barColor;
  final String title;
  final String? text;
  final String? backgroundImage;
  final void Function()? onClicked;

  const BoxButton({Key? key, this.barColor, required this.title, this.text, this.backgroundImage, this.onClicked})
      : super(key: key);

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        decoration: BoxDecoration(
            color: context.themeColors.secondaryBackground,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: const Color(0xffc9c9c9), width: 0.5)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ...(barColor != null
                ? [
                    Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                      Container(
                          width: 7,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: barColor!,
                            borderRadius:
                                const BorderRadius.only(topLeft: Radius.circular(7), bottomLeft: Radius.circular(7)),
                          ))
                    ])
                  ]
                : []),
            if (backgroundImage != null)
              SvgPictureExtension.localAsset(
                backgroundImage!,
                semanticsLabel: null,
                excludeFromSemantics: true,
                alignment: Alignment.bottomRight,
                fit: BoxFit.scaleDown,
                color: AppColors.cardGradientRight,
                width: 57,
                height: 61,
              ),
            VStack(
              padding: const EdgeInsets.only(left: 15, right: 15),
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(title, style: context.fontByStyle(ThemeTextStyle.title4), textAlign: TextAlign.left)),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(text != null ? text! : "",
                      style: context.fontByStyle(ThemeTextStyle.body3), textAlign: TextAlign.left),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
