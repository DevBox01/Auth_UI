import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

void showAlertDialog(BuildContext context,
    {required String text, String? assetName}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Lottie.asset(
        assetName ?? "assets/lottie/error.json",
        height: 50,
        width: 50,
      ),
      content: Text(text),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDestructiveAction: false,
          onPressed: () => Navigator.pop(context),
          child: const Text('Okay'),
        ),
      ],
    ),
  );
}
