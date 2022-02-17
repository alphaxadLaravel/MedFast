import 'package:flutter/material.dart';
import 'package:medfast/screens/common/welcome/components/body.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);
  static String id = "welcome";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}