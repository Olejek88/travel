import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:travel/main_lib.dart';
import 'package:travel/modules/travel_app.dart';

import 'dynamic_text_highlight.dart';

class ListRow extends StatelessWidget {
  const ListRow(
      {Key? key,
      this.id,
      required this.title,
      this.subtitle,
      this.imageUrl,
      this.source,
      this.barColor,
      this.isBorderHidden = true,
      this.isArrowHidden = false,
      this.prefixIcon,
      this.value,
      this.isChecked,
      this.hideOrRemove,
      this.onClicked,
      this.highlights,
      this.onChecked,
      this.onRestoreClick,
      this.onDismissed})
      : super(key: key);

  final String? id;
  final String title;
  final String? imageUrl;
  final String? subtitle;
  final String? source;
  final String? value;
  final List<String>? highlights;
  final Color? barColor;
  final bool? isBorderHidden;
  final bool isArrowHidden;
  final bool? isChecked;

  /// Parameter [hideOrRemove] specifies whether the element is removable or hidden
  /// null = item not able to swipe / not a dismissible
  /// false = item can be hidden
  /// true = item is removable
  final bool? hideOrRemove;
  final Widget? prefixIcon;
  final void Function()? onClicked;
  final void Function(bool checked)? onChecked;
  final void Function()? onDismissed;
  final void Function()? onRestoreClick;

  @override
  Widget build(BuildContext context) {
    return dismissible(
      context,
      GestureDetector(
        onTap: onClicked,
        child: content(context),
      ),
    );
  }

  Widget dismissible(BuildContext context, Widget content) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 24,
            right: 4,
            width: null,
            height: null,
            child: Container(
              color: hideOrRemove == false ? AppColors.hideEventRow : AppColors.deleteEventRow,
            )),
        Slidable(
          // Specify a key if the Slidable is dismissible.
          key: ValueKey(id),
          enabled: hideOrRemove != null,
          groupTag: '0',
          closeOnScroll: true,
          // The end action pane is the one at the right or the bottom side.
          endActionPane: ActionPane(
            // A motion is a widget used to control how the pane animates.
            extentRatio: 0.3,
            motion: const BehindMotion(),
            children: [
              _CustomRowAction(
                autoClose: true,
                backgroundColor: hideOrRemove == false ? AppColors.hideEventRow : AppColors.deleteEventRow,
                onPressed: (_) {
                  if (onDismissed != null) onDismissed!();
                },
                child: Text(
                  hideOrRemove == false ? context.i10n.travel_app : context.i10n.travel_app,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          child: content,
        ),
      ],
    );
  }

  Widget content(BuildContext context) {
    return PlainListRow(
      minHeight: 54,
      barColor: barColor,
      child: Flexible(
        child: HStack(
          spacing: 8,
          padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
          children: [
            if (imageUrl != null)
              ClipOval(
                  child: CachedNetworkImage(imageUrl: "$baseUrl/$imageUrl", height: 35, width: 35, fit: BoxFit.cover)),
            Flexible(child: textContent(context)),
            if (!isArrowHidden)
              Padding(padding: const EdgeInsets.only(left: 8, right: 16), child: context.themeIcons.listArrowRight)
            else if (isChecked != null)
              checkbox(context)
            else if (value != null)
                Text(value ?? "", style: context.fontByStyle(ThemeTextStyle.body))
            else
              const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }

  Widget checkbox(BuildContext context) {
    return Semantics(
      label: "${isChecked == true ? context.i10n.travel_app : ""}"
          "${isChecked == false ? context.i10n.travel_app : ""}"
          "${context.i10n.travel_app}",
      child: SizedBox(
        child: Transform.scale(
          scale: 1.2,
          child: Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.padded,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
            side: MaterialStateBorderSide.resolveWith(
              (states) => BorderSide(width: 1.5, color: context.themeColors.mainText),
            ),
            key: Key("${title}Checkbox"),
            checkColor: context.themeColors.mainText,
            activeColor: Colors.transparent,
            value: isChecked,
            tristate: false,
            onChanged: (checked) {
              if (checked != null && onChecked != null) onChecked!(checked);
            },
          ),
        ),
      ),
    );
  }

  Widget restoreVisibilityButton(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: onRestoreClick,
        child: VStack(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPictureExtension.localAsset("assets_core/icons/returnButton.svg",
                height: 38, width: 38, key: const Key("Restore"), fit: BoxFit.contain),
            Text(context.i10n.travel_app, style: context.fontByStyle(ThemeTextStyle.body))
          ],
        ),
      ),
    );
  }

  Widget textContent(BuildContext context) {
    return VStack(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HStack(
            spacing: 12,
            children: [
              ...(prefixIcon != null ? [prefixIcon!] : []),
              Flexible(
                  child: DynamicTextHighlighting(
                text: title,
                highlights: highlights ?? [],
                color: Colors.yellow,
                maxLines: 3,
                style: context.fontByStyle(ThemeTextStyle.body1).copyWith(color: context.themeColors.mainText),
                caseSensitive: false,
                overflow: TextOverflow.ellipsis,
              ))
            ],
          ),
          ...(subtitle != null && subtitle!.isNotEmpty
              ? [
                  DynamicTextHighlighting(
                    text: subtitle!,
                    highlights: highlights ?? [],
                    color: Colors.yellow,
                    style: context.fontByStyle(ThemeTextStyle.body2),
                    caseSensitive: false,
                    overflow: TextOverflow.ellipsis,
                  )
                ]
              : []),
          ...(source != null && source!.isNotEmpty
              ? [
                  Text(source!,
                      maxLines: 2, overflow: TextOverflow.ellipsis, style: context.fontByStyle(ThemeTextStyle.body2))
                ]
              : [])
        ]);
  }
}

class _CustomRowAction extends StatelessWidget {
  const _CustomRowAction({
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.autoClose = true,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final bool autoClose;
  final Color backgroundColor;
  final SlidableActionCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox.expand(
        child: OutlinedButton(
          onPressed: () => _handleTap(context),
          style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(7), bottomRight: Radius.circular(7))),
            side: BorderSide.none,
          ),
          child: child,
        ),
      ),
    );
  }

  void _handleTap(BuildContext context) {
    onPressed?.call(context);
    if (autoClose) {
      Slidable.of(context)?.close();
    }
  }
}

class PlainListRow extends StatelessWidget {
  final Color? barColor;
  final bool? isBorderHidden;
  final bool? hidden;
  final double? minHeight;
  final Widget child;

  const PlainListRow({
    Key? key,
    this.isBorderHidden = true,
    this.hidden,
    this.minHeight,
    this.barColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxShadow =
        BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 15, spreadRadius: 0, offset: const Offset(0, 2));
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth,
        constraints: BoxConstraints(minHeight: minHeight ?? 0),
        decoration: BoxDecoration(
            color: hidden == true ? context.themeColors.hiddenRowBackground : context.themeColors.tilesBackground,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [if (!context.isDarkMode()) boxShadow],
            border: isBorderHidden == true ? null : Border.all(color: context.themeColors.border, width: 0.5)),
        child: IntrinsicHeight(
          child: HStack(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (barColor != null)
                Opacity(
                  opacity: hidden == true ? 0.5 : 1,
                  child: Container(
                      width: 7,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: barColor!,
                        borderRadius:
                            const BorderRadius.only(topLeft: Radius.circular(7), bottomLeft: Radius.circular(7)),
                      )),
                ),
              child,
            ],
          ),
        ),
      );
    });
  }
}
