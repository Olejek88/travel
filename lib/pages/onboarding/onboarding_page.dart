import 'package:travel/modules/main/onboarding_scaffold.dart';
import '../../main_lib.dart';

class OnboardingPage extends HookConsumerWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OnboardingScaffold(
        showBackButton: true,
        showSkipButton: false,
        automaticallyImplyLeading: false,
        body: SafeArea(
          child: VStack(padding: const EdgeInsets.all(20), children: []),
        ));
  }
}
