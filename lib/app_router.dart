import 'package:auto_route/empty_router_widgets.dart';
import 'package:travel/pages/main/profile_page.dart';
import 'package:travel/pages/main/ratings_page.dart';
import 'package:travel/pages/main/todos_page.dart';
import 'package:travel/pages/onboarding/onboarding_page.dart';
import 'package:travel/pages/search/global_search_page.dart';

import 'main_lib.dart';
import 'modules/travel_app.dart';
import 'pages/main/dashboard_page.dart';
import 'pages/main/main_tabs_page.dart';

const subPagesAutoRoutes = [
];

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(name: "OnboardingRoute", page: HeroEmptyRouterPage, children: [
      AutoRoute(page: OnboardingPage, name: "OnboardingPage", initial: true)
    ]),
    CustomRoute(
        name: "RawModalRouter",
        page: HeroEmptyRouterPage,
        customRouteBuilder: bottomPopupRouteBuilder,
        transitionsBuilder: ModalTransitions.fromBottomPageTransition,
        children: [AutoRoute(page: GlobalSearchPage), ...subPagesAutoRoutes]),
    CustomRoute(
      initial: true,
      guards: [CheckIfOnboardingIsDone],
      name: "MainRouter",
      page: MainTabsPage,
      path: '/',
      customRouteBuilder: customModalBackgroundPageRouteBuilder,
      children: [
        AutoRoute(
            initial: true,
            name: "DashboardSection",
            page: HeroEmptyRouterPage,
            children: [AutoRoute(initial: true, path: 'dashboard', page: DashboardPage), ...subPagesAutoRoutes]),
        AutoRoute(
            name: "TodosSection",
            page: EmptyRouterPage,
            children: [AutoRoute(initial: true, path: 'todos', page: TodosPage), ...subPagesAutoRoutes]),
        AutoRoute(
            name: "RatingsSection",
            page: EmptyRouterPage,
            children: [AutoRoute(initial: true, path: 'ratings', page: RatingsPage), ...subPagesAutoRoutes]),
        AutoRoute(
            name: "ProfileSection",
            page: EmptyRouterPage,
            children: [AutoRoute(initial: true, path: 'profile', page: ProfilePage), ...subPagesAutoRoutes]),
      ],
    ),
  ],
)
class $AppRouter {}
