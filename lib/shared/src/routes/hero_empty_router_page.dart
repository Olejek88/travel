part of commons_ui;

class HeroEmptyRouterPage extends StatelessWidget {
  const HeroEmptyRouterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeroControllerScope(
      controller: HeroController(),
      child: const AutoRouter(),
    );
  }
}