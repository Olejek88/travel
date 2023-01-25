// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:travel/main_lib.dart' as _i1;
import 'package:travel/pages/main/dashboard_page.dart' as _i5;
import 'package:travel/pages/main/main_tabs_page.dart' as _i2;
import 'package:travel/pages/main/profile_page.dart' as _i8;
import 'package:travel/pages/main/ratings_page.dart' as _i7;
import 'package:travel/pages/main/todos_page.dart' as _i6;
import 'package:travel/pages/onboarding/onboarding_page.dart' as _i3;
import 'package:travel/pages/search/global_search_page.dart' as _i4;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HeroEmptyRouterPage(),
      );
    },
    RawModalRouter.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.HeroEmptyRouterPage(),
        customRouteBuilder: _i1.bottomPopupRouteBuilder,
        transitionsBuilder: _i1.ModalTransitions.fromBottomPageTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainRouter.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.MainTabsPage(),
        customRouteBuilder: _i1.customModalBackgroundPageRouteBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnboardingPage.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnboardingPage(),
      );
    },
    GlobalSearchRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.GlobalSearchPage(),
      );
    },
    DashboardSection.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HeroEmptyRouterPage(),
      );
    },
    TodosSection.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    RatingsSection.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    ProfileSection.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardPage(),
      );
    },
    TodosRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.TodosPage(),
      );
    },
    RatingsRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.RatingsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          OnboardingRoute.name,
          path: '/hero-empty-router-page',
          children: [
            _i9.RouteConfig(
              OnboardingPage.name,
              path: '',
              parent: OnboardingRoute.name,
            )
          ],
        ),
        _i9.RouteConfig(
          RawModalRouter.name,
          path: '/hero-empty-router-page',
          children: [
            _i9.RouteConfig(
              GlobalSearchRoute.name,
              path: 'global-search-page',
              parent: RawModalRouter.name,
            )
          ],
        ),
        _i9.RouteConfig(
          MainRouter.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              DashboardSection.name,
              path: '',
              parent: MainRouter.name,
              children: [
                _i9.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: DashboardSection.name,
                  redirectTo: 'dashboard',
                  fullMatch: true,
                ),
                _i9.RouteConfig(
                  DashboardRoute.name,
                  path: 'dashboard',
                  parent: DashboardSection.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              TodosSection.name,
              path: 'empty-router-page',
              parent: MainRouter.name,
              children: [
                _i9.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: TodosSection.name,
                  redirectTo: 'todos',
                  fullMatch: true,
                ),
                _i9.RouteConfig(
                  TodosRoute.name,
                  path: 'todos',
                  parent: TodosSection.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              RatingsSection.name,
              path: 'empty-router-page',
              parent: MainRouter.name,
              children: [
                _i9.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: RatingsSection.name,
                  redirectTo: 'ratings',
                  fullMatch: true,
                ),
                _i9.RouteConfig(
                  RatingsRoute.name,
                  path: 'ratings',
                  parent: RatingsSection.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              ProfileSection.name,
              path: 'empty-router-page',
              parent: MainRouter.name,
              children: [
                _i9.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: ProfileSection.name,
                  redirectTo: 'profile',
                  fullMatch: true,
                ),
                _i9.RouteConfig(
                  ProfileRoute.name,
                  path: 'profile',
                  parent: ProfileSection.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.HeroEmptyRouterPage]
class OnboardingRoute extends _i9.PageRouteInfo<void> {
  const OnboardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          path: '/hero-empty-router-page',
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i1.HeroEmptyRouterPage]
class RawModalRouter extends _i9.PageRouteInfo<void> {
  const RawModalRouter({List<_i9.PageRouteInfo>? children})
      : super(
          RawModalRouter.name,
          path: '/hero-empty-router-page',
          initialChildren: children,
        );

  static const String name = 'RawModalRouter';
}

/// generated route for
/// [_i2.MainTabsPage]
class MainRouter extends _i9.PageRouteInfo<void> {
  const MainRouter({List<_i9.PageRouteInfo>? children})
      : super(
          MainRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i3.OnboardingPage]
class OnboardingPage extends _i9.PageRouteInfo<void> {
  const OnboardingPage()
      : super(
          OnboardingPage.name,
          path: '',
        );

  static const String name = 'OnboardingPage';
}

/// generated route for
/// [_i4.GlobalSearchPage]
class GlobalSearchRoute extends _i9.PageRouteInfo<void> {
  const GlobalSearchRoute()
      : super(
          GlobalSearchRoute.name,
          path: 'global-search-page',
        );

  static const String name = 'GlobalSearchRoute';
}

/// generated route for
/// [_i1.HeroEmptyRouterPage]
class DashboardSection extends _i9.PageRouteInfo<void> {
  const DashboardSection({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardSection.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'DashboardSection';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class TodosSection extends _i9.PageRouteInfo<void> {
  const TodosSection({List<_i9.PageRouteInfo>? children})
      : super(
          TodosSection.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'TodosSection';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class RatingsSection extends _i9.PageRouteInfo<void> {
  const RatingsSection({List<_i9.PageRouteInfo>? children})
      : super(
          RatingsSection.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'RatingsSection';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class ProfileSection extends _i9.PageRouteInfo<void> {
  const ProfileSection({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileSection.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'ProfileSection';
}

/// generated route for
/// [_i5.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i6.TodosPage]
class TodosRoute extends _i9.PageRouteInfo<void> {
  const TodosRoute()
      : super(
          TodosRoute.name,
          path: 'todos',
        );

  static const String name = 'TodosRoute';
}

/// generated route for
/// [_i7.RatingsPage]
class RatingsRoute extends _i9.PageRouteInfo<void> {
  const RatingsRoute()
      : super(
          RatingsRoute.name,
          path: 'ratings',
        );

  static const String name = 'RatingsRoute';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}
