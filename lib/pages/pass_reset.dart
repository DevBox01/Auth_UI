import 'package:auth_ui/helper/helper.dart';
import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/material.dart';

class PassReset extends StatefulWidget {
  const PassReset({Key? key}) : super(key: key);

  @override
  State<PassReset> createState() => _PassResetState();
}

class _PassResetState extends State<PassReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        image: backgroudImage(context, isPassRsetPage: true),
        child: passResetAuthUI(
          context,
          onPressed: () => setState(() {
            isObscure = !isObscure;
          }),
        ),
      ),
    );
  }
}
