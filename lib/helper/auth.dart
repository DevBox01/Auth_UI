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
  return SingleChildScrollView(
    child: Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 130),
          //Page title
          Padding(
            padding: EdgeInsets.only(
                left: 0, right: MediaQuery.of(context).size.width - 120),
            child: const Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          //Email
          const SizedBox(height: 10),
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
  return SingleChildScrollView(
    child: Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 120),
          //Page Tilte
          Padding(
            padding: EdgeInsets.only(
                left: 0, right: MediaQuery.of(context).size.width - 120),
            child: const Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 5),
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
          ),
          RoundedActionBouton(
            onPressed: () {},
            text: 'Sign Up ',
            icon: CupertinoIcons.arrow_left,
          ),
          const SizedBox(height: 10),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: const SignIn(),
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
