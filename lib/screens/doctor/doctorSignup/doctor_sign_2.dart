import 'package:flutter/material.dart';
import 'package:medfast/screens/doctor/doctorSignup/components/body_2.dart';

class OtherDoctorDetails extends StatelessWidget {
  const OtherDoctorDetails({ Key? key }) : super(key: key);
  static String id = "/otherDetails";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LastDoctorDetails(),);
  }
}