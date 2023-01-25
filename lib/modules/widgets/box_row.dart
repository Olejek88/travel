import 'package:flutter/material.dart';
import 'package:travel/main_lib.dart';

class BoxRow extends StatelessWidget {
  const BoxRow(
      {Key? key,
        required this.title,
        this.value,
        this.isArrowHidden = false,
        this.isValueActive = false,
        this.isChecked = false,
        this.type,
        this.onClicked,
        this.onSwitched
      })
      : super(key: key);

  final String title;
  final String? value;
  final BoxRowType? type;
  final bool isChecked;
  final bool isArrowHidden;
  final bool isValueActive;
  final void Function()? onClicked;
  final void Function(bool)? onSwitched;

  @override
  Widget build(BuildContext context) {
    var boxShadow = BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 15,
        spreadRadius: 0, offset: const Offset(0, 2));

    return Container(
        height: 54,
        decoration: BoxDecoration(
            color: context.themeColors.tilesBackground,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [ if (!context.isDarkMode()) boxShadow ]),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: HStack(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(title, style: context.fontByStyle(ThemeTextStyle.body1)),
                  ),
                  if (type==BoxRowType.typeSwitch) ...[
                    Semantics(
                      label: (isChecked ? context.i10n.travel_app : context.i10n.travel_app)
                          + "." + context.i10n.travel_app,
                      explicitChildNodes: false,
                      child: Switch.adaptive(
                          value: isChecked,
                          activeColor: AppColors.activeSwitchColor,
                          activeTrackColor: AppColors.activeSwitchColor,
                          onChanged: (value) {
                            if (onSwitched!=null) onSwitched!(value);
                          }),
                    )
                  ],
                  if (type==BoxRowType.typeDateTime) ...[
                    Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                            onTap: onClicked,
                            child: Semantics(
                              label: (value!=null? value! : context.i10n.travel_app) + "." +
                                  context.i10n.travel_app,
                              explicitChildNodes: false,
                              child: Text(
                                  value!=null? value! : context.i10n.travel_app,
                                  style: value!=null?
                                  context.fontByStyle(ThemeTextStyle.select) :
                                  context.fontByStyle(ThemeTextStyle.body2)
                              ),
                            ))
                    )
                  ],
                  if (!isArrowHidden) ...[context.themeIcons.listArrowRight],
                ],
              ),
            )
          ],
        ),
    );
  }
}

enum BoxRowType {
  typeSwitch, typeDateTime
}

