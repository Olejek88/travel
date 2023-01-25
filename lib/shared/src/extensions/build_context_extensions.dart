part of commons_ui;

extension BuildContextExtension on BuildContext {
  bool isDarkMode() => MediaQuery.of(this).platformBrightness == Brightness.dark;

  void openInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false); // forceSafariVC: false to open url in external browser on iOS
    }
  }

  bool get isInModalPage {
    return ["RawModalRouter", "RawModalRouter"].contains(router.routeData.name);
  }

  Size getSizeByText(String text, TextStyle style) => (TextPainter(
          text: TextSpan(text: text, style: style),
          maxLines: 1,
          textScaleFactor: MediaQuery.of(this).textScaleFactor,
          textDirection: TextDirection.ltr)
        ..layout())
      .size;

  /// Opens a platform based modal displaying error message and optional title
  void showDialog({String? message, String? title, String closeButtonText = "Ok"}) {
    if (kIsWeb || Platform.isAndroid) {
      material.showDialog(
          context: this,
          builder: (BuildContext context) => material.AlertDialog(
                title: title != null ? Text(title) : null,
                content: message != null ? Text(message) : null,
                actions: [
                  material.TextButton(
                    child: Text(closeButtonText),
                    onPressed: () {
                      //onClicked
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                  )
                ],
              ));
    } else {
      cupertino.showCupertinoDialog<void>(
        context: this,
        builder: (BuildContext context) => cupertino.CupertinoAlertDialog(
          title: title != null ? Text(title) : null,
          content: message != null ? Text(message) : null,
          actions: <cupertino.CupertinoDialogAction>[
            cupertino.CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                //onClicked
                Navigator.of(context, rootNavigator: true).pop('dialog');
              },
              child: Text(closeButtonText),
            ),
          ],
        ),
      );
    }
  }
}
