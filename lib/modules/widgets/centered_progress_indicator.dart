import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main_lib.dart';

class CenteredProgressIndicator extends StatelessWidget {
  const CenteredProgressIndicator(
      {Key? key,
      this.id,
      this.color
      })
      : super(key: key);

  final String? id;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          Platform.isIOS ? CupertinoActivityIndicator(
            color: color ?? AppColors.highlight,
            radius: 20,
          ) : CircularProgressIndicator(
            color: color ?? AppColors.highlight,
            semanticsLabel: "Loading",
        )

        ],
      ),
    );
  }
}
