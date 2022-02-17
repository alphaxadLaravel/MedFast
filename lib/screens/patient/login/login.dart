import 'package:flutter/material.dart';
import 'package:medfast/screens/patient/login/components/body.dart';

class ClientLoginScreen extends StatelessWidget {
  const ClientLoginScreen({ Key? key }) : super(key: key);
  static String id = "/clientLogin";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body(),);
  }
}