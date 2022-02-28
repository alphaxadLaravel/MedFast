import 'package:flutter/material.dart';
import 'package:medfast/screens/common/privacy/components/body.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({ Key? key }) : super(key: key);
  static String id = "/privacy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("MedFast Privacy Policy"),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 2,
        ),
      body:  const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Details(),
        )
      ,);
  }
}