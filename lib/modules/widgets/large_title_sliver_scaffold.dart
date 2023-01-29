import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:travel/modules/widgets/CustomSliverNavigationBar.dart';
import 'package:travel/modules/widgets/custom_appbar_svg_button.dart';

import '../../main_lib.dart';

class LargeTitleSliverScaffold extends HookConsumerWidget {
  final String? largeTitle;
  final String? middleTitle;
  final Widget? largeTitleWidget;
  final Widget? middleTitleWidget;
  final bool stretch;
  final List<Widget>? slivers;
  final Widget? body;

  final Widget? leading;
  final List<Widget>? trailingActions;

  final bool showGlobalSearchButton;

  final bool automaticallyImplyLeading;

  const LargeTitleSliverScaffold(
      {Key? key,
      this.largeTitle,
      this.middleTitle,
      this.largeTitleWidget,
      this.middleTitleWidget,
      this.stretch = false,
      this.leading,
      this.trailingActions,
      this.showGlobalSearchButton = false,
      this.automaticallyImplyLeading = true,
      this.slivers,
      this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var trailing = trailingActions?.isEmpty ?? true && !showGlobalSearchButton
        ? null
        : Row(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            if (trailingActions != null) ...trailingActions!,
            if (showGlobalSearchButton)
              CustomAppbarSVGButton(
                asset: "assets/icons/iconSearch.svg",
                semanticLabel: context.i10n.travel_app,
                horizontalPadding: !kIsWeb && Platform.isIOS ? 16 : 0,
                onPressed: () {
                  //context.router.push(const RawModalRouter(children: [GlobalSearchRoute()]));
                },
              )
          ]);

    return CupertinoTheme(
      data: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
        navLargeTitleTextStyle: context.fontByStyle(ThemeTextStyle.title1),
        navTitleTextStyle: context.fontByStyle(ThemeTextStyle.headTitle),
        primaryColor: context.themeColors.defaultText, //change color of the TOP navbar icon
      )),
      child: PlatformScaffold(
        backgroundColor: context.themeColors.primaryBackground,
        body: CustomScrollView(
          slivers: [
            CustomSliverNavigationBar(
              border: const Border(),
              backgroundColor: context.themeColors.primaryBackground,
              largeTitle: largeTitle != null
                  ? Padding(padding: const EdgeInsets.symmetric(horizontal: 4), child: Text(largeTitle!))
                  : largeTitleWidget,
              middle: middleTitle != null
                  ? Text(middleTitle!, style: context.fontByStyle(ThemeTextStyle.headTitle))
                  : middleTitleWidget,
              leading: leading,
              padding: const EdgeInsetsDirectional.only(top: 12, start: 20, end: 20),
              trailing: trailing,
              automaticallyImplyTitle: automaticallyImplyLeading,
              stretch: stretch,
            ),
            if (slivers != null) ...slivers!,
            SliverList(delegate: SliverChildListDelegate([if (body != null) body!]))
          ],
        ),
      ),
    );
  }
}
