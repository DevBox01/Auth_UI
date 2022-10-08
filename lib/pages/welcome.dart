import 'package:auth_ui/helper/rounded_action_button.dart';
import 'package:auth_ui/pages/screen.dart';
import 'package:flutter/cupertino.dart';
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
          CupertinoButton(
              child: const Text('LOgin'),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     PageTransition(
                //         type: PageTransitionType.rotate,
                //         duration: const Duration(seconds: 1),
                //         alignment: Alignment.bottomLeft,
                //         child: const SignIn()));

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignIn()));
              }),
        ],
      ),
    );
  }
}
