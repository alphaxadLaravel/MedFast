import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/textfields.dart';
import 'package:medfast/screens/doctor/forgot/forgot_password.dart';

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
            'assets/images/Medicine.gif',
            height: size.height * 0.35,
          ),
          SizedBox(
              height: size.height * 0.01,
          ),
          const Text("Doctor Login", 
          style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),),
          SizedBox(
              height: size.height * 0.02,
          ),
          const Text("Please provide your past account login credentials", 
          style: TextStyle( fontSize: 14, color: Colors.black38, ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
              height: size.height * 0.038,
          ),
          const FieldInput(
            type: TextInputType.text,
            hint: "MCT ID",
            labelname: "Username",
            prefix: Icons.phone
            ),
            SizedBox(
              height: size.height * 0.03,
          ),
          const PasswordTextField(),
           SizedBox(
              height: size.height * 0.03,
          ),
          // checkbox here
          MedFastButton(
            text: "Login", 
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
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Forgot Password ? ',
              overflow: TextOverflow.ellipsis,
            ),
            InkWell(
              child: const Text(
                "Click Here!",
                 style: TextStyle(color: Colors.lightBlueAccent, decoration: TextDecoration.underline)),
              onTap: (){
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ForgotPassword())
              );
              },
            ),
          ],
        ),
        ],),
        
        ),
    );
  }
}