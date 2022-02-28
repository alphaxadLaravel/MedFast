import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/constants.dart';
import 'package:medfast/screens/common/constants/textfields.dart';
import 'package:medfast/screens/common/otp/otp_screen.dart';
import 'package:medfast/screens/common/privacy/privacy_policy.dart';
import 'package:medfast/screens/common/terms/terms_conditions.dart';

class LastDoctorDetails extends StatefulWidget {
  const LastDoctorDetails({ Key? key }) : super(key: key);

  @override
  _LastDoctorDetailsState createState() => _LastDoctorDetailsState();
}

class _LastDoctorDetailsState extends State<LastDoctorDetails> {
  bool agree = false;
  String? doctor;
  String? simu;

  TextEditingController email  = TextEditingController();
  TextEditingController phone  = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState!.validate()){
       Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const OtpScreen())
      );
    }else{
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: Form(
          key: formkey,
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
                height: size.height * 0.02,
            ),
            const RegionDropDown(),
            SizedBox(
                height: size.height * 0.01,
            ),
            
              FieldInput(
               type: TextInputType.emailAddress,
              hint: "Your Email",
              labelname: "Email",
              prefix: Icons.email,
              controller: email, 
              validate: (value){
                if(value.isEmpty){
                  return "Email is required";
                }else if(!validEmail.hasMatch(value)){
                  return "The email is not correct";
                }
              },
              onChanged: (value){
                doctor=value;
              }, 
              prefixWord: "",
            ),
              SizedBox(
                height: size.height * 0.01,
            ),
            
             FieldInput(
              type: TextInputType.phone,
              hint: "....",
              labelname: "Phone Number",
              prefix: Icons.phone,
              controller: phone, 
              validate: (value){
                  if(value.isEmpty){
                    return "Please fill the Phone number.";
                  }else if(value.length < 9){
                    return "Phone number is not correct - begin with 7 or 6";
                  }else if(value.length > 9){
                    return "Phone number is not correct - begin with 7 or 6";
                  }
                },
              onChanged: (value){
                simu=value;
              }, 
              prefixWord: "+255",
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                // Checkbox(
                  
                //   value: agree, 
                //   onChanged: (value){
                //     setState(() {
                //       agree = value ?? false;
                //     });
                //   }
                // ),
                const Text(
                  'On register, you agree to ',
                  textAlign: TextAlign.center,
                ),
                InkWell(
                  child: const Text(
                    "terms ",
                    style: TextStyle(color: Colors.lightBlueAccent, decoration: TextDecoration.underline)),
                  onTap: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const TermsAndCondtion())
                  );
                  },
                ),
                const Text(
                  '& ',
                ),
                InkWell(
                  child: const Text(
                    "privacy policy",
                    style: TextStyle(color: Colors.lightBlueAccent, decoration: TextDecoration.underline)),
                  onTap: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PrivacyPolicy())
                  );
                  },
                ),
              ],
            ),
             SizedBox(
                height: size.height * 0.02,
            ),
            MedFastButton(
              text: "Register", 
              textColor: Colors.white, 
              backgroundColor: Colors.lightBlueAccent, 
              onPressed: (){
               validate();
              }
            ),
          ],),
        ),
        
        ),
    );
  }
}