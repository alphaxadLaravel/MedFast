import 'package:flutter/material.dart';
import 'package:medfast/screens/doctor/doctorSignup/components/body.dart';

class DoctorSignupScreen extends StatelessWidget {
  const DoctorSignupScreen({ Key? key }) : super(key: key);
  static String id = "/doctorSignup";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body(),);
  }
}