import 'package:auth_ui/helper/helper.dart';
import 'package:auth_ui/pages/screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RoundedActionBouton(
            onPressed: () => Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rotate,
                    duration: const Duration(seconds: 1),
                    alignment: Alignment.bottomLeft,
                    child: const SignIn())),
            text: 'Sign In',
          ),
          RoundedActionBouton(
            onPressed: () => Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rotate,
                    duration: const Duration(seconds: 1),
                    alignment: Alignment.bottomLeft,
                    child: const SignUp())),
            text: 'Sign Up',
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
