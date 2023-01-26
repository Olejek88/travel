import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/providers/locale_provider.dart';

import '../../main_lib.dart';
import '../app_router.gr.dart';
import '../pages/splash_page.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

void Function(String?)? onSelectNotification = (id){};

final _isAppReadyProvider = StateProvider.autoDispose<bool>((ref) {
  return true;
});

class CheckIfOnboardingIsDone extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final userSettings = sharedPrefs.getString("onboarding");
    if (userSettings != null ) {
      resolver.next(true);
    } else {
      router.push(const OnboardingRoute());
    }
  }
}

void initSharedPrefs() async{
  await SharedPrefs.init();
}

class TravelApp extends HookConsumerWidget {
  final _appRouter = AppRouter(checkIfOnboardingIsDone: CheckIfOnboardingIsDone());

  TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final isAppReady = ref.watch(_isAppReadyProvider);
    var brightness = ref.watch(appBrightnessProvider);
    var isDarkMode = SchedulerBinding.instance.window.platformBrightness == Brightness.dark;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    FlutterError.demangleStackTrace = (StackTrace stack) {
      if (stack is stack_trace.Trace) return stack.vmTrace;
      if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
      return stack;
    };
    if (isAppReady) {
      return _fade(brightness == Brightness.light, buildMain(context, ref, brightness), SplashPage(brightness: isDarkMode ? Brightness.dark : Brightness.light));
    } else {
      initSharedPrefs();
      return SplashPage(brightness: isDarkMode ? Brightness.dark : Brightness.light );
    }
  }

  Widget buildMain(BuildContext context, WidgetRef ref, Brightness brightness) {
    return CommonPlatformRouterApp(router: _appRouter,
      locale: ref.watch(currentLocaleProvider.state).state,
      localizationsDelegates: const [AppLocalizations.delegate],
      supportedLocales: AppLocalizations.supportedLocales,
      darkPrimaryTextColor: darkColors.mainText,
      lightPrimaryTextColor: lightColors.mainText,
      darkScaffoldBackground: darkColors.primaryBackground,
      lightScaffoldBackground: lightColors.primaryBackground,
    );
  }

  Widget _fade(bool isLightMode, Widget revealing, Widget disappearing) {
    final fadeInAnimationController = useAnimationController(duration: const Duration(milliseconds: 500));
    final fadeInAnimation = CurveTween(curve: Curves.easeIn).animate(fadeInAnimationController);
    final fadeOutAnimationController =
        useAnimationController(duration: const Duration(milliseconds: 1000), initialValue: 1);
    final fadeOutAnimation = CurveTween(curve: Curves.easeIn).animate(fadeOutAnimationController);
    final isCompleted = useState(false);

    _startAnimations(fadeInAnimationController, fadeOutAnimationController, isCompleted);
    return Stack(
      fit: StackFit.passthrough,
      alignment: Alignment.center,
      children: [
        if (!isCompleted.value) ...[
          Container(
            color: isLightMode ? lightColors.appBarMainColor : darkColors.appBarMainColor,
          )
        ],
        FadeTransition(opacity: fadeInAnimation, child: revealing),
        if (!isCompleted.value) ...[FadeTransition(opacity: fadeOutAnimation, child: disappearing)]
      ],
    );
  }

  void _startAnimations(
      AnimationController inController, AnimationController outController, ValueNotifier isCompleted) async {
    await Future.delayed(const Duration(seconds: 2));
    inController.forward();
    outController.reverse().whenComplete(() => isCompleted.value = true);
  }
}

class SharedPrefs {
  static late final SharedPreferences instance;
  static Future<SharedPreferences> init() async {
    return instance = await SharedPreferences.getInstance();
  }
}