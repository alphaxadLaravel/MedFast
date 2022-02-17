import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/textfields.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: Column(
          children: [
          SizedBox(
              height: size.height * 0.05,
          ),
          Image.asset(
            'assets/images/pass.gif',
            height: size.height * 0.35,
          ),
          SizedBox(
              height: size.height * 0.01,
          ),
          const Text("Forgot Password", 
          style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),),
          SizedBox(
              height: size.height * 0.02,
          ),
          const Text("Please provide your email, to recover your password", 
          style: TextStyle( fontSize: 14, color: Colors.black38, ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
              height: size.height * 0.038,
          ),
        //  
        const FieldInput(
            type: TextInputType.emailAddress,
            hint: "Your Email",
            labelname: "Email",
            prefix: Icons.email
            ),
            SizedBox(
              height: size.height * 0.03,
          ),
          // checkbox here
          MedFastButton(
            text: "Recover Password", 
            textColor: Colors.white, 
            backgroundColor: Colors.lightBlueAccent, 
            onPressed: (){
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => const OtpScreen())
              // );
            }
          ),
           SizedBox(
              height: size.height * 0.03,
          ),
        ],),
        ),
    );
  }
}