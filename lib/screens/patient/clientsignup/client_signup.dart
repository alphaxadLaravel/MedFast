import 'package:flutter/material.dart';
import 'package:medfast/screens/patient/clientsignup/components/body.dart';

class ClientSignup extends StatelessWidget {
  const ClientSignup({ Key? key }) : super(key: key);
  static String id = "/clientSignup";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}