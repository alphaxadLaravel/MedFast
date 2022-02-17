import 'package:flutter/material.dart';
import 'package:medfast/screens/common/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({ Key? key }) : super(key: key);
  static String id = "/otp";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}