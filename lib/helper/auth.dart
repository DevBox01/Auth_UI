import 'package:auth_ui/helper/helper.dart';
import 'package:auth_ui/pages/screen.dart';
import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget authUI(
  BuildContext context, {
  VoidCallback? onPressed,
  bool isTrue = true,
  bool isSignUp = false,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      //Sign In Header image
      authHeaderImage(context, isloginPage: isTrue),
      //Email
      textInputWidget(context,
          textInputAction: TextInputAction.next,
          hintText: 'Email ID',
          prefixIcon: CupertinoIcons.at,
          autofillHints: [
            AutofillHints.email,
          ]),

      //Full Name
      isSignUp
          ? textInputWidget(context,
              textInputAction: TextInputAction.next,
              hintText: 'John Joe',
              prefixIcon: CupertinoIcons.at,
              autofillHints: [
                  AutofillHints.email,
                ])
          : Container(),
      //Password
      textInputWidget(
        context,
        onPressed: onPressed,
        textInputAction: TextInputAction.go,
        hintText: 'Password',
        prefixIcon: CupertinoIcons.lock,
        suffixIcon: GestureDetector(
          child: const Icon(
            CupertinoIcons.eye,
          ),
        ),
      ),
      RoundedActionBouton(
        onPressed: () {},
        text: 'Sign In',
        icon: Icons.arrow_right_alt,
      ),
      const SizedBox(height: 10),
      AlreadyHaveAnAccountCheck(press: () {
        Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRightWithFade,
              child: const SignUp(),
              duration: const Duration(milliseconds: 600),
            ));
      }),
      const OrDivider(),
      //Socil app Sign In
      socialApp(context)
    ],
  );
}
