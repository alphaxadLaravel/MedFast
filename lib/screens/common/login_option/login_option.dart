import 'package:flutter/material.dart';
import 'package:medfast/screens/common/login_option/components/body.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({ Key? key }) : super(key: key);
  static String id = "/loginOption";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body(),);
  }
}