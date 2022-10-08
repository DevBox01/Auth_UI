import 'package:auth_ui/utils/colorPicker.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "New to Logistics?  " : "Joined us before?  ",
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            login ? "Register" : "Login",
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: pickerColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
