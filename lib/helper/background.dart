import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/material.dart';

Widget textInputWidget(
  BuildContext context, {
  required String hintText,
  required IconData prefixIcon,
  Widget? suffixIcon,
  required TextInputAction textInputAction,
  TextEditingController? controller,
  VoidCallback? onTap,
  VoidCallback? onPressed,
  Widget? child,
  autofillHints,
  obscureText,
}) {
  final brightness = Theme.of(context).brightness;
  var myColor = (brightness == Brightness.light)
      ? Colors.white.withOpacity(0.8)
      : Colors.grey.withOpacity(0.1);
  var boxColor = (brightness == Brightness.light)
      ? Colors.grey
      : Colors.grey.withOpacity(0.1);
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
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
        child: TextFormField(
          textInputAction: textInputAction,
          controller: controller,
          autofillHints: autofillHints,
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon,
                color: (brightness == Brightness.light)
                    ? pickerColor
                    : Colors.white),
            suffixIcon: GestureDetector(
              onTap: onPressed,
              child: child,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontStyle: FontStyle.italic),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )),
          ),
        ),
      ),
    ),
  );
}
