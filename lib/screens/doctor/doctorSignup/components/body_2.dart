import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/textfields.dart';
import 'package:medfast/screens/common/terms/terms_conditions.dart';

class LastDoctorDetails extends StatefulWidget {
  const LastDoctorDetails({ Key? key }) : super(key: key);

  @override
  _LastDoctorDetailsState createState() => _LastDoctorDetailsState();
}

class _LastDoctorDetailsState extends State<LastDoctorDetails> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: Column(
          children: [
          SizedBox(
              height: size.height * 0.04,
          ),
          Image.asset(
            'assets/images/Medicine.gif',
            height: size.height * 0.32,
          ),
          SizedBox(
              height: size.height * 0.01,
          ),
          const Text("Doctor Account", 
          style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),),
          SizedBox(
              height: size.height * 0.02,
          ),
          const Text("Please provide your actual credentials \nas appeared in MCT", 
          style: TextStyle( fontSize: 14, color: Colors.black38, ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
              height: size.height * 0.03,
          ),
          const RegionDropDown(),
          SizedBox(
              height: size.height * 0.01,
          ),
          const FieldInput(
            type: TextInputType.emailAddress,
            hint: "Your Email",
            labelname: "Email",
            prefix: Icons.email
            ),
            SizedBox(
              height: size.height * 0.01,
          ),
          
          const FieldInput(
            type: TextInputType.phone,
            hint: "Phone Number",
            labelname: "Phone Number",
            prefix: Icons.phone
            ),
            SizedBox(
              height: size.height * 0.01,
          ),
          // checkbox here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              child: Checkbox(
                value: agree,
                onChanged: (value) {
                  setState(() {
                    agree = value ?? false;
                  });
                },
              ),
            ),
            const Text(
              'I Agree to ',
              overflow: TextOverflow.ellipsis,
            ),
            InkWell(
              child: const Text(
                "Terms and Conditions",
                 style: TextStyle(color: Colors.lightBlueAccent, decoration: TextDecoration.underline)),
              onTap: (){
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TermsAndCondtion())
              );
              },
            ),
          ],
        ), 

          MedFastButton(
            text: "Finish", 
            textColor: Colors.white, 
            backgroundColor: Colors.lightBlueAccent, 
            onPressed: (){
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => const OtpScreen())
              // );
            }
          ),
        ],),
        
        ),
    );
  }
}