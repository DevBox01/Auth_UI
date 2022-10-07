import 'package:auth_ui/helper/helper.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        child: authUI(context,
            onPressed: () => setState(() {
                  isObscure = !isObscure;
                })),
      ),
    ));
  }
}
