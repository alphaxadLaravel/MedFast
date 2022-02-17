import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/constants.dart';
import 'package:medfast/screens/common/constants/routes.dart';
import 'package:medfast/screens/common/onboard/onboardscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      title: 'MedFast',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: OnBoardScreen.id,
      routes: routes,
    );
  }
}


