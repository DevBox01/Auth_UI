import 'package:auth_ui/helper/helper.dart';
import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/material.dart';

class PassForgot extends StatelessWidget {
  const PassForgot({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        image: backgroudImage(context, isPassRsetPage: false),
        child: forgotPassAuthUI(
          context,
        ),
      ),
    );
  }
}
