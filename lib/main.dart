import 'package:flutter/material.dart';
import 'package:my_bank_app/Screens/export_screens.dart';
import 'package:my_bank_app/colors/color.dart';

void main() {
  runApp(const MyBankApp());
}

class MyBankApp extends StatelessWidget {
  const MyBankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        primarySwatch: Colors.deepPurple,
      ),
      home: LogingScreen(),
      //HomeScreen()
    );
  }
}
