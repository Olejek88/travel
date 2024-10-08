import 'package:flutter/foundation.dart';

import '../../app_router.gr.dart';
import '../../main_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

abstract class MainTabsPageBottomNavKeys {
  static const String _prefix = "NavBottomBar";
  static const String dashboard = "${_prefix}Dashboard";
  static const String todos = "${_prefix}Todos";
  static const String rating = "${_prefix}Rating";
  static const String profile = "${_prefix}Profile";
}

class MainTabsPage extends ConsumerWidget {
  const MainTabsPage({Key? key}) : super(key: key);

  static const routes = [
    DashboardSection(),
    RatingsSection(),
    ProfileSection(),
    TodosSection()
  ];

  void onTabTap(WidgetRef ref, int index, TabsRouter tabsRouter) async {
    if (tabsRouter.activeIndex != index) {
      tabsRouter.setActiveIndex(index);
    } else {
      while (await tabsRouter.popTop()) {}
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platformLabel = Platform.isAndroid ? "" : null;
    final tabItems = [
      BottomNavigationBarItem(
          icon: Semantics(
              label: context.i10n.travel_app,
              child: context.themeIcons.navigationHome),
          activeIcon: Semantics(
              label: context.i10n.travel_app,
              child: context.themeIcons.navigationHomeActive),
          tooltip: MainTabsPageBottomNavKeys.dashboard,
          label: platformLabel),
      BottomNavigationBarItem(
          icon: Semantics(
              label: context.i10n.travel_app,
              child: context.themeIcons.navigationTodo),
          activeIcon: Semantics(
              label: context.i10n.travel_app,
              child: context.themeIcons.navigationTodoActive),
          tooltip: MainTabsPageBottomNavKeys.todos,
          label: platformLabel),
      BottomNavigationBarItem(
          icon: Semantics(
              label: context.i10n.travel_app,
              child: context.themeIcons.navigationRating),
          activeIcon: Semantics(
              label: context.i10n.travel_app,
              child: context.themeIcons.navigationRatingActive),
          tooltip: MainTabsPageBottomNavKeys.rating,
          label: platformLabel),
      BottomNavigationBarItem(
          icon: Semantics(
              label: context.i10n.travel_app,
              child: context.themeIcons.navigationProfile),
          activeIcon: Semantics(
              label: context.i10n.travel_app,
              child: context.themeIcons.navigationProfileActive),
          tooltip: MainTabsPageBottomNavKeys.profile,
          label: platformLabel),
    ];

    return AutoTabsScaffold(
      routes: routes,
      animationDuration:
          // Must by 1ms for iOS to fix white flickering in dark mode,
          (kIsWeb || Platform.isAndroid) ? const Duration(milliseconds: 300) : const Duration(milliseconds: 1),
      backgroundColor: context.themeColors.primaryBackground,
      bottomNavigationBuilder: (_, tabsRouter) {
        if (Platform.isAndroid) {
          return BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) => onTabTap(ref, index, tabsRouter),
              items: tabItems,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              unselectedFontSize: 10,
              selectedFontSize: 10,
              backgroundColor: context.themeColors.bottomBarBackground);
        } else {
          return CupertinoTabBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => onTabTap(ref, index, tabsRouter),
            items: tabItems,
            inactiveColor: context.themeColors.bottomBarUnselected,
            activeColor: context.themeColors.appBarMainColor,
            backgroundColor: context.themeColors.bottomBarBackground,
          );
        }
      },
    );
  }
}
