import 'package:flutter/material.dart';
import 'package:medfast/screens/common/terms/component/body.dart';

class TermsAndCondtion extends StatelessWidget {
  const TermsAndCondtion({ Key? key }) : super(key: key);
  static String id = "/termsCondtion";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("MedFast Terms & Conditions"),
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