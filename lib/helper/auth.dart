import 'package:auth_ui/helper/helper.dart';
import 'package:auth_ui/pages/screen.dart';
import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

//SignIn
Widget loginAuthUI(
  BuildContext context, {
  VoidCallback? onPressed,
}) {
  final logFormKey = GlobalKey<FormState>();
  return SingleChildScrollView(
    child: Form(
      key: logFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Sign In Header image
          authHeaderImage(context, isloginPage: true),
          //Email
          textInputWidget(context,
              textInputAction: TextInputAction.next,
              hintText: 'Email ID',
              prefixIcon: CupertinoIcons.at,
              autofillHints: [
                AutofillHints.email,
              ]),

          //Password
          passWordInputWidget(
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
      ),
    ),
  );
}

//Sign Up
Widget signupAuthUI(
  BuildContext context, {
  VoidCallback? onPressed,
}) {
  final regFormKey = GlobalKey<FormState>();
  return SingleChildScrollView(
    child: Form(
      key: regFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Sign In Header image
          authHeaderImage(context, isloginPage: false),
          //Email
          textInputWidget(context,
              textInputAction: TextInputAction.next,
              hintText: 'Email ID',
              prefixIcon: CupertinoIcons.at,
              autofillHints: [
                AutofillHints.email,
              ]),

          //Full Name
          textInputWidget(context,
              textInputAction: TextInputAction.next,
              hintText: 'John Joe',
              prefixIcon: CupertinoIcons.person,
              autofillHints: [
                AutofillHints.email,
              ]),

          //Password
          passWordInputWidget(
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
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRightWithFade,
                    child: const SignUp(),
                    duration: const Duration(milliseconds: 600),
                  ));
            },
          ),
          const OrDivider(),
          //Socil app Sign In
          socialApp(context)
        ],
      ),
    ),
  );
}
