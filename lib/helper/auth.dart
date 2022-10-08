// ignore_for_file: avoid_print
import 'package:auth_ui/helper/helper.dart';
import 'package:auth_ui/pages/screen.dart';
import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
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
          logReg(context, logReg: true),
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
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width - 180),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRightWithFade,
                    child: const PassForgot(),
                    duration: const Duration(milliseconds: 600),
                  )),
              child: Text(
                "Forgot Password ?",
                style: TextStyle(
                  color: pickerColor,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          RoundedActionBouton(
            onPressed: () => showAlertDialog(
              context,
              text: 'This is just a sample submission form',
            ),
            text: 'LOGIN',
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
          logReg(context, logReg: false),
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
            onPressed: () => showAlertDialog(
              context,
              text: 'This is just a sample submission form',
            ),
            text: 'REGISTER',
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

//PassWord Forget
Widget forgotPassAuthUI(
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
          forgReset(context, forgReset: true),
          //Email
          const SizedBox(height: 10),
          textInputWidget(context,
              textInputAction: TextInputAction.next,
              hintText: 'Email ID',
              prefixIcon: CupertinoIcons.at,
              autofillHints: [
                AutofillHints.email,
              ]),

          RoundedActionBouton(
            onPressed: () => Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rotate,
                  alignment: Alignment.bottomLeft,
                  child: const PassReset(),
                  duration: const Duration(seconds: 1),
                )),
            text: 'SEND EMAIL',
          ),
          const SizedBox(height: 10),
          AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rotate,
                      alignment: Alignment.topRight,
                      child: const SignIn(),
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

//PassWord Forget
Widget passResetAuthUI(
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
          forgReset(context, forgReset: false),
          //Email
          const SizedBox(height: 10),
          //Password
          passWordInputWidget(
            context,
            controller: password,
            onPressed: onPressed,
            textInputAction: TextInputAction.go,
            hintText: 'New Password',
            prefixIcon: CupertinoIcons.lock,
          ),
          if (password.text.isEmpty == false) ...{
            FlutterPwValidator(
              controller: password,
              minLength: 6,
              uppercaseCharCount: 2,
              numericCharCount: 3,
              specialCharCount: 1,
              width: 300,
              height: 150,
              onSuccess: () {
                print("MATCHED");
                // ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Text("Password is matched")));
              },
              onFail: () {
                print("NOT MATCHED");
              },
            )
          } else ...{
            Container()
          },

          RoundedActionBouton(
            onPressed: () => showAlertDialog(
              context,
              text: 'This is just a sample submission form',
            ),
            text: 'RESET',
          ),
          const SizedBox(height: 10),
          AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rotate,
                      alignment: Alignment.topRight,
                      child: const SignIn(),
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
