import 'package:flutter/material.dart';
import '../../app_router.gr.dart';
import '../../main_lib.dart';

class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold(
      {Key? key,
      required this.body,
      this.title,
      this.showAppBar = true,
      this.showBackButton = false,
      this.showSkipButton = false,
      this.automaticallyImplyLeading = true})
      : super(key: key);

  final Widget body;
  final Widget? title;
  final bool showAppBar;
  final bool automaticallyImplyLeading;
  final bool showBackButton;
  final bool showSkipButton;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: showAppBar
          ? PlatformAppBar(
              title: title ?? const Text(""),
              leading: showBackButton ? const OnboardingBack() : const SizedBox(),
              trailingActions:
                  showSkipButton ? [const OnboardingSkip(nextRoute: DashboardRoute())] : [const SizedBox()],
              automaticallyImplyLeading: automaticallyImplyLeading,
              backgroundColor: context.themeColors.primaryBackground,
              material: (context, platform) => MaterialAppBarData(
                  elevation: 0, foregroundColor: context.themeColors.mainText, centerTitle: true, leadingWidth: 100),
              cupertino: (context, platform) => CupertinoNavigationBarData(border: const Border()),
            )
          : null,
      backgroundColor: context.themeColors.primaryBackground,
      body: body,
    );
  }
}

class OnboardingSkip extends ConsumerWidget {
  final PageRouteInfo nextRoute;
  const OnboardingSkip({Key? key, required this.nextRoute}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
        onTap: () {
        },
        key: const Key("Skip"),
        child: HStack(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(context.i10n.travel_app, style: context.fontByStyle(ThemeTextStyle.headRight)),
          Icon(Icons.arrow_forward_ios, size: 20, color: context.themeColors.mainText),
        ]));
  }
}

class OnboardingBack extends StatelessWidget {
  const OnboardingBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.router.pop();
        },
        key: const Key("Back"),
        child: HStack(children: [
          Icon(Icons.arrow_back_ios_outlined, size: 20, color: context.themeColors.mainText),
          Text(context.i10n.travel_app, style: context.fontByStyle(ThemeTextStyle.headRight))
        ]));
  }
}
