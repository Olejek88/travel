import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_lib.dart';

final splashScreenDelay = FutureProvider<bool>((ref) async {
  await Future.delayed(const Duration(seconds: 0));
  return true;
});

class SplashPage extends HookConsumerWidget {
  final Brightness brightness;
  const SplashPage({Key? key, required this.brightness}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Image.asset("assets/world.jpg");
  }
}
