import 'package:auth_ui/utils/colorPicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedActionBouton extends StatelessWidget {
  const RoundedActionBouton({
    Key? key,
    required this.text,
    this.onPressed,
    this.icon,
  }) : super(key: key);
  final IconData? icon;
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    var myColor = (brightness == Brightness.light)
        ? Colors.white.withOpacity(0.8)
        : Colors.grey.withOpacity(0.1);
    var boxColor = (brightness == Brightness.light)
        ? Colors.grey
        : Colors.grey.withOpacity(0.1);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 58,
        width: MediaQuery.of(context).size.width - 10,
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              color: boxColor,
              blurRadius: 15.0,
              spreadRadius: 2.0,
              offset: const Offset(
                5.0,
                5.0,
              ),
            )
          ],
        ),
        child: CupertinoButton(
            color: pickerColor,
            onPressed: onPressed,
            pressedOpacity: 0.9,
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(text), const SizedBox(width: 5), Icon(icon)],
            )),
      ),
    );
  }
}
