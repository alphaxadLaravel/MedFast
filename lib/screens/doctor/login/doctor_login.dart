import 'package:flutter/material.dart';
import 'package:medfast/screens/doctor/login/components/body.dart';

class DoctorLogin extends StatelessWidget {
  const DoctorLogin({ Key? key }) : super(key: key);
  static String id = "/doctorLogin";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body(),);
  }
}