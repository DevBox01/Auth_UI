import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget authHeaderImage(BuildContext context, {bool isloginPage = true}) {
  Size size = MediaQuery.of(context).size;
  String assetName = 'assets/images';
  return SvgPicture.asset(
    isloginPage ? '$assetName/Login.svg' : '$assetName/signup.svg',
    semanticsLabel: 'Header image',
    width: size.width * 0.35,
  );
}
