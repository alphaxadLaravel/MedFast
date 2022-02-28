// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/constants.dart';
import 'package:medfast/screens/common/constants/textfields.dart';
import 'package:medfast/screens/common/otp/otp_screen.dart';
import 'package:medfast/screens/common/privacy/privacy_policy.dart';
import 'package:medfast/screens/common/terms/terms_conditions.dart';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController jina = TextEditingController();
  TextEditingController namba = TextEditingController();
  String? jina_lako;
  String? namba_simu;
  bool agree = false;

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
                height: size.height * 0.02,
            ),
            FieldInput(
              type: TextInputType.text,
              hint: "Jina kamili",
              labelname: "Jina Kamili",
              prefix: Icons.person_add,
              controller: jina, 
              validate: (value){
                if(value.isEmpty){
                  return "Tafadhali Jaza jina kamili";
                }else if(value.length <= 10){
                  return "Tafadhali Jaza jina Kamili";
                }else if(!validName.hasMatch(value)){
                  return "Jina ulilojaza sio sahihi";
                }
              },
              onChanged: (value){
                jina_lako=value;
              }, 
              prefixWord: "",
            ),
              // const RegionDropDown(),
              SizedBox(
                height: size.height * 0.01,
            ),
            
            const RegionsDropClient(),
            SizedBox(
                height: size.height * 0.01,
            ),
              FieldInput(
              type: TextInputType.phone,
              hint: ".....",
              labelname: "Namba ya simu",
              prefix: Icons.phone,
              controller: namba, 
              validate: (value){
                if(value.isEmpty){
                  return "Tafadhari Jaza namba ya simu.";
                }else if(value.length < 9){
                  return "Namba ya simu sio sahihi - anza na 7 au 6";
                }else if(value.length > 9){
                  return "Namba ya simu sio sahihi - anza na 7 au 6";
                }
              },
              onChanged: (value){
                namba_simu=value;
              }, 
              prefixWord: "+255",
            ),
              SizedBox(
                height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
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

