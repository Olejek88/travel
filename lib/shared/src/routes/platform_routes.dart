part of commons_ui;

CustomRoute plainModalRouter({String name = "RawModalRouter", List<AutoRoute>? children}) {
  return CustomRoute(
      name: name,
      page: HeroEmptyRouterPage,
      customRouteBuilder: bottomPopupRouteBuilder,
      transitionsBuilder: ModalTransitions.fromBottomPageTransition,
      children: children);
}

class TabBarRoute {
  final bool initial;
  final String name;
  final List<AutoRoute>? children;

  TabBarRoute({this.initial = false, required this.name, this.children});
}

CustomRoute tabBarRouter(
    {required String name,
    bool initial = false,
    String path = '/',
    List<TabBarRoute>? tabBarRoutes,
    required Type page}) {
  return CustomRoute(
      customRouteBuilder: customModalBackgroundPageRouteBuilder,
      name: name,
      page: page,
      path: path,
      initial: initial,
      children: tabBarRoutes
          ?.map(
            (tabBarRoute) => AutoRoute(
                initial: tabBarRoute.initial, name: tabBarRoute.name, page: HeroEmptyRouterPage, children: tabBarRoute.children),
          )
          .toList(growable: false));
}
