import 'package:auth_ui/helper/colors.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcom'),
      ),
      body: Center(
        child: Text(
          'Welcom',
          style: TextStyle(color: AppColor.blackPurple),
        ),
      ),
    );
  }
}
