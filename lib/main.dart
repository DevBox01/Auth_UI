import 'package:auth_ui/pages/screen.dart';
import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: pickerColor,
        ),
      ),
      home: const Welcome(),
    );
  }
}
