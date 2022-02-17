import 'package:flutter/material.dart';
import 'package:medfast/screens/doctor/forgot/components/body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({ Key? key }) : super(key: key);
  static String id = "/forgot";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(),);
  }
}