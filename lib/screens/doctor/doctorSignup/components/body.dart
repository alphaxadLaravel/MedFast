import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/constants.dart';
import 'package:medfast/screens/common/constants/textfields.dart';
import 'package:medfast/screens/doctor/doctorSignup/doctor_sign_2.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool agree = false;
  String? jina;
  String? id;
  TextEditingController name = TextEditingController();
  TextEditingController mct = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState!.validate()){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const OtherDoctorDetails())
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
                height: size.height * 0.01,
            ),
            const Text("Please provide your actual credentials \nas appeared in MCT", 
            style: TextStyle( fontSize: 14, color: Colors.black38, ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
                height: size.height * 0.02,
            ),
              FieldInput(
              type: TextInputType.text,
              hint: "Your Full Name",
              labelname: "Full Name",
              prefix: Icons.person_add,
              controller: name, 
              validate: (value){
                 if(value.isEmpty){
                  return "Please fill your full name";
                }else if(value.length <= 10){
                  return "Full name is required";
                }else if(!validName.hasMatch(value)){
                  return "The full name is not correct";
                }
              },
              onChanged: (value){
                jina=value;
              }, 
              prefixWord: "",
            ),
              // const RegionDropDown(),
              SizedBox(
                height: size.height * 0.01,
            ),
            const MedicalRanks(),
              // const RegionDropDown(),
            SizedBox(
                height: size.height * 0.01,
            ),
              FieldInput(
              type: TextInputType.text,
              hint: "MCTLOXX or XXX",
              labelname: "MCT ID",
              prefix: Icons.document_scanner_sharp,
              controller: mct, 
              validate: (value){
                if(value.isEmpty){
                  return "Please fill the MCT ID";
                }else if(value.length < 5){
                  return "MCT ID is not correct";
                }
              },
              onChanged: (value){
                id=value;
              }, 
              prefixWord: "",
            ),
               SizedBox(
                height: size.height * 0.01,
            ),
            // checkbox here
            MedFastButton(
              text: "Next", 
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