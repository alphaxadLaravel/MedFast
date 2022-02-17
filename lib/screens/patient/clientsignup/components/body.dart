import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/textfields.dart';
import 'package:medfast/screens/common/otp/otp_screen.dart';
import 'package:medfast/screens/common/terms/terms_conditions.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
              height: size.height * 0.03,
          ),
          Image.asset(
            'assets/images/meet.gif',
            height: size.height * 0.31,
          ),
          SizedBox(
              height: size.height * 0.01,
          ),
          const Text("Client Account", 
          style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),),
          SizedBox(
              height: size.height * 0.01,
          ),
          const Text("Jaza taarifa zako, ili tukuhudumie kwa haraka!", 
          style: TextStyle( fontSize: 14, color: Colors.black38, ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
              height: size.height * 0.03,
          ),
           const FieldInput(
            type: TextInputType.text,
            hint: "Jina kamili",
            labelname: "Jina Kamili",
            prefix: Icons.person_add,
            ),
            // const RegionDropDown(),
            SizedBox(
              height: size.height * 0.02,
          ),
          
          const RegionsDropClient(),
          SizedBox(
              height: size.height * 0.02,
          ),
          const FieldInput(
            type: TextInputType.phone,
            hint: "Namba ya simu",
            labelname: "Namba ya simu",
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
            text: "Signup", 
            textColor: Colors.white, 
            backgroundColor: Colors.lightBlueAccent, 
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const OtpScreen())
              );
            }
          ),
        ],),
        
        ),
    );
  }
}