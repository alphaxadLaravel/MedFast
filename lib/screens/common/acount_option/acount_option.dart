import 'package:flutter/material.dart';
import 'package:medfast/screens/common/acount_option/components/body.dart';

class ChooseAccount extends StatelessWidget {
  const ChooseAccount({ Key? key }) : super(key: key);
  static String id = "/accoutOption";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body(),);
  }
}