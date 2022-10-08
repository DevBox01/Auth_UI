import 'package:auth_ui/helper/helper.dart';
import 'package:auth_ui/utils/background.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
      image: authHeaderImage(context, isloginPage: false),
      child: signupAuthUI(
        context,
        onPressed: () => setState(() {
          isObscure = !isObscure;
        }),
      ),
    ));
  }
}
