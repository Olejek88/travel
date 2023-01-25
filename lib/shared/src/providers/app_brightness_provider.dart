part of commons_ui;

class AppBrightnessNotifier extends StateNotifier<Brightness> with WidgetsBindingObserver {
  AppBrightnessNotifier() : super(WidgetsBinding.instance.window.platformBrightness) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    state = WidgetsBinding.instance.window.platformBrightness;
  }
}

final appBrightnessProvider = StateNotifierProvider<AppBrightnessNotifier, Brightness>((ref) {
  return AppBrightnessNotifier();
});
