part of commons_ui;

class CommonPlatformRouterApp extends HookConsumerWidget {
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale>? supportedLocales;

  final RootStackRouter router;
  final String? initialDeepLink;
  final Color? lightScaffoldBackground;
  final Color? darkScaffoldBackground;
  final Color? lightPrimaryTextColor;
  final Color? darkPrimaryTextColor;
  final Locale? locale;

  const CommonPlatformRouterApp({
    Key? key,
    required this.router,
    this.initialDeepLink,
    this.localizationsDelegates,
    this.supportedLocales,
    this.lightScaffoldBackground,
    this.darkScaffoldBackground,
    this.lightPrimaryTextColor,
    this.darkPrimaryTextColor,
    this.locale
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(appBrightnessProvider);
    return buildMain(context, ref, brightness);
  }

  Widget buildMain(BuildContext context, WidgetRef ref, Brightness brightness) {
    final isLightMode = brightness == Brightness.light;
    return PlatformApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        if (localizationsDelegates != null) ...localizationsDelegates!,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: supportedLocales,
      locale: locale,
      material: (context, platform) => MaterialAppRouterData(
        theme: material.ThemeData.light().copyWith(
            primaryColor: lightPrimaryTextColor,
            backgroundColor: lightScaffoldBackground,
            scaffoldBackgroundColor: lightScaffoldBackground),
        darkTheme: material.ThemeData.dark().copyWith(
            primaryColor: darkPrimaryTextColor,
            backgroundColor: darkScaffoldBackground,
            scaffoldBackgroundColor: darkScaffoldBackground),
      ),
      cupertino: (context, platform) {
        return CupertinoAppRouterData(
            theme: cupertino.CupertinoThemeData(
                brightness: brightness,
                primaryColor: isLightMode ? lightPrimaryTextColor : darkPrimaryTextColor,
                scaffoldBackgroundColor: isLightMode ? lightScaffoldBackground : darkScaffoldBackground));
      },
      routerDelegate: router.delegate(initialDeepLink: initialDeepLink),
      routeInformationParser: router.defaultRouteParser(),
      builder: (context, child) {
        return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1), child: child ?? const Spacer());
      },
    );
  }
}
