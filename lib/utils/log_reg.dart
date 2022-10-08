import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/cupertino.dart';

//Login & register
Widget logReg(
  BuildContext context, {
  required bool logReg,
}) {
  return Padding(
    padding: EdgeInsets.only(
        left: 0, right: MediaQuery.of(context).size.width - 150),
    child: Text(
      logReg ? "LOGIN" : "REGISTER",
      style: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: pickerColor,
      ),
    ),
  );
}

//pass forgot & reset
Widget forgReset(
  BuildContext context, {
  required bool forgReset,
}) {
  return Padding(
    padding: EdgeInsets.only(
        left: 10, right: MediaQuery.of(context).size.width - 170),
    child: Text(
      forgReset ? "PASS FORGOT" : "PASS RESET",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: pickerColor,
      ),
    ),
  );
}
