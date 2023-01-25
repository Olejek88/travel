part of commons_ui;

// import 'dart:io';
//
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
//
// import 'cupertino_bottom_sheet.dart';

class ModalTransitions {
  static Widget fromBottomPageTransition(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut)
          .drive(Tween(begin: const Offset(0.0, 1.0), end: Offset.zero)),
      child: child,
    );
  }
}

Route<T> customModalBackgroundPageRouteBuilder<T>(BuildContext context, Widget child, CustomPage<T> page) {
  return CustomMaterialWithModalsPageRoute(builder: (context) => child, settings: page);
}

Route<T> noTransitonRouteBuilder<T>(BuildContext context, Widget child, CustomPage<T> page) {
  return NoTransitionRoute(builder: (context) => child, settings: page);
}

class NoTransitionRoute<T> extends MaterialPageRoute<T> {
  NoTransitionRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
      builder: builder,
      maintainState: maintainState,
      settings: settings,
      fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}


class CustomMaterialWithModalsPageRoute<T> extends MaterialPageRoute<T> {
  /// Construct a MaterialPageRoute whose contents are defined by [builder].
  ///
  /// The values of [builder], [maintainState], and [fullScreenDialog] must not
  /// be null.
  CustomMaterialWithModalsPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  })  : super(
      settings: settings,
      fullscreenDialog: fullscreenDialog,
      builder: builder,
      maintainState: maintainState);

  ModalBottomSheetRoute? _nextModalRoute;

  @override
  bool canTransitionTo(TransitionRoute<dynamic> nextRoute) {
    // Don't perform outgoing animation if the next route is a fullscreen dialog.
    return (nextRoute is MaterialPageRoute && !nextRoute.fullscreenDialog) ||
        (nextRoute is CupertinoPageRoute && !nextRoute.fullscreenDialog) ||
        (nextRoute is MaterialWithModalsPageRoute &&
            !nextRoute.fullscreenDialog) ||
        (nextRoute is ModalBottomSheetRoute);
  }

  @override
  void didChangeNext(Route? nextRoute) {
    if (nextRoute is ModalBottomSheetRoute) {
      _nextModalRoute = nextRoute;
    }

    super.didChangeNext(nextRoute);
  }

  @override
  void didPopNext(Route nextRoute) {
    super.didPopNext(nextRoute);
  }

  @override
  bool didPop(T? result) {
    _nextModalRoute = null;
    return super.didPop(result);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final theme = Theme.of(context).pageTransitionsTheme;
    final nextRoute = _nextModalRoute;
    if (nextRoute != null) {
      if (!secondaryAnimation.isDismissed) {
        // Avoid default transition theme to animate when a new modal view is pushed
        final fakeSecondaryAnimation =
        Tween<double>(begin: 0, end: 0).animate(secondaryAnimation);

        final defaultTransition = theme.buildTransitions<T>(
            this, context, animation, fakeSecondaryAnimation, child);
        return nextRoute.getPreviousRouteTransition(
            context, secondaryAnimation, defaultTransition);
      } else {
        _nextModalRoute = null;
      }
    } else {
      return child;
    }

    return theme.buildTransitions<T>(
        this, context, animation, secondaryAnimation, child);
  }
}


Route<T> bottomPopupRouteBuilder<T>(BuildContext context, Widget child, CustomPage<T> page) {
  return !kIsWeb && Platform.isIOS
      ? CustomCupertinoModalBottomSheetRoute(
          duration: const Duration(milliseconds: 200),
          builder: (context) => child,
          settings: page,
          expanded: true,
          topRadius: const Radius.circular(12),
          animationCurve: Curves.linearToEaseOut,
          // modalBarrierColor: Colors.grey.withOpacity(0.3),
          containerBuilder: (context, _, child) => CupertinoBottomSheetContainer(
            backgroundColor: null,
            topRadius: const Radius.circular(12),
            shadow: null,
            child: child,
          ),
        )
      : MaterialPageRoute(builder: (context) => child, settings: page);
}

// class _CupertinoBottomSheetContainer extends StatelessWidget {
//   final Widget child;
//   final Color? backgroundColor;
//   final Radius topRadius;
//   final BoxShadow? shadow;
//
//   const _CupertinoBottomSheetContainer({
//     Key? key,
//     required this.child,
//     this.backgroundColor,
//     required this.topRadius,
//     this.shadow,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final topSafeAreaPadding = MediaQuery.of(context).padding.top;
//     final topPadding = 10 + topSafeAreaPadding;
//
//     final _shadow = shadow ?? const BoxShadow(blurRadius: 10, color: Colors.black12, spreadRadius: 5);
//     const BoxShadow(blurRadius: 10, color: Colors.black12, spreadRadius: 5);
//     final _backgroundColor = backgroundColor ?? CupertinoTheme.of(context).scaffoldBackgroundColor;
//     return Padding(
//       padding: EdgeInsets.only(top: topPadding),
//       child: ClipRRect(
//         borderRadius: BorderRadius.vertical(top: topRadius),
//         child: Container(
//           decoration: BoxDecoration(color: _backgroundColor, boxShadow: [_shadow]),
//           width: double.infinity,
//           child: MediaQuery.removePadding(
//             context: context,
//             removeTop: true, //Remove top Safe Area
//             child: child,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class CustomMaterialWithModalsPageRoute<T> extends MaterialPageRoute<T> {
//   /// Construct a MaterialPageRoute whose contents are defined by [builder].
//   ///
//   /// The values of [builder], [maintainState], and [fullScreenDialog] must not
//   /// be null.
//   CustomMaterialWithModalsPageRoute({
//     required WidgetBuilder builder,
//     RouteSettings? settings,
//     bool maintainState = true,
//     bool fullscreenDialog = false,
//   })  : super(
//       settings: settings,
//       fullscreenDialog: fullscreenDialog,
//       builder: builder,
//       maintainState: maintainState);
//
//   ModalBottomSheetRoute? _nextModalRoute;
//
//   @override
//   bool canTransitionTo(TransitionRoute<dynamic> nextRoute) {
//     // Don't perform outgoing animation if the next route is a fullscreen dialog.
//     return (nextRoute is MaterialPageRoute && !nextRoute.fullscreenDialog) ||
//         (nextRoute is CupertinoPageRoute && !nextRoute.fullscreenDialog) ||
//         (nextRoute is MaterialWithModalsPageRoute &&
//             !nextRoute.fullscreenDialog) ||
//         (nextRoute is ModalBottomSheetRoute);
//   }
//
//   @override
//   void didChangeNext(Route? nextRoute) {
//     if (nextRoute is ModalBottomSheetRoute) {
//       _nextModalRoute = nextRoute;
//     }
//
//     super.didChangeNext(nextRoute);
//   }
//
//   @override
//   void didPopNext(Route nextRoute) {
//     super.didPopNext(nextRoute);
//   }
//
//   @override
//   bool didPop(T? result) {
//     _nextModalRoute = null;
//     return super.didPop(result);
//   }
//
//   @override
//   Widget buildTransitions(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation, Widget child) {
//     final theme = Theme.of(context).pageTransitionsTheme;
//     final nextRoute = _nextModalRoute;
//     if (nextRoute != null) {
//       if (!secondaryAnimation.isDismissed) {
//         // Avoid default transition theme to animate when a new modal view is pushed
//         final fakeSecondaryAnimation =
//         Tween<double>(begin: 0, end: 0).animate(secondaryAnimation);
//
//         final defaultTransition = theme.buildTransitions<T>(
//             this, context, animation, fakeSecondaryAnimation, child);
//         return nextRoute.getPreviousRouteTransition(
//             context, secondaryAnimation, defaultTransition);
//       } else {
//         _nextModalRoute = null;
//       }
//     }
//
//     return theme.buildTransitions<T>(
//         this, context, animation, secondaryAnimation, child);
//   }
// }
