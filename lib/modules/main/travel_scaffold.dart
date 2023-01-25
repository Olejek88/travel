import '../../main_lib.dart';
import '../widgets/custom_appbar_svg_button.dart';

class TravelScaffold extends StatelessWidget {
  const TravelScaffold(
      {Key? key,
      required this.body,
      this.title,
      this.label,
      this.showAppBar = true,
      this.leading,
      this.trailingActions,
      this.useScaffoldBackground = true,
      this.automaticallyImplyLeading = true,
      this.isTransparent = false,
      this.showReminderButton = false,
      this.showGlobalSearchButton = false})
      : assert(!(showReminderButton && leading != null)),
        super(key: key);

  final Widget body;
  final Widget? title;
  final String? label;
  final Widget? leading;
  final List<Widget>? trailingActions;
  final bool showAppBar;
  final bool useScaffoldBackground;
  final bool isTransparent;
  final bool automaticallyImplyLeading;
  final bool showReminderButton;
  final bool showGlobalSearchButton;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: showAppBar
          ? PlatformAppBar(
              title: label != null ? Text(label!, style: context.fontByStyle(ThemeTextStyle.headTitle)) : title,
              leading: showReminderButton
                  ? CustomAppbarSVGButton(
                      asset: "assets_core/icons/iconReminder.svg",
                      semanticLabel: context.i10n.travel_app,
                      isLeading: true,
                      onPressed: () {
                        //context.router.push(const SettingsRoute());
                      },
                    )
                  : leading,
              trailingActions: showGlobalSearchButton
                  ? [
                      CustomAppbarSVGButton(
                        asset: "assets_core/icons/iconSearch.svg",
                        semanticLabel: context.i10n.travel_app,
                        horizontalPadding: 20,
                        onPressed: () {
                          //context.router.push(const RawModalRouter(children: [GlobalSearchRoute()]));
                        },
                      ),
                    ]
                  : trailingActions,
              automaticallyImplyLeading: automaticallyImplyLeading,
              backgroundColor:
                  useScaffoldBackground ? context.themeColors.primaryBackground : context.themeColors.modalBackground,
              material: (context, platform) =>
                  MaterialAppBarData(elevation: 0, foregroundColor: context.themeColors.mainText, centerTitle: true),
              cupertino: (context, platform) => CupertinoNavigationBarData(border: const Border()),
            )
          : null,
      backgroundColor:
          useScaffoldBackground ? context.themeColors.primaryBackground : context.themeColors.modalBackground,
      body: body,
    );
  }
}
