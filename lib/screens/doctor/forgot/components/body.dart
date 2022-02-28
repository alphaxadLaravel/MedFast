import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/constants.dart';
import 'package:medfast/screens/common/constants/textfields.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? mail;
  TextEditingController email = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState!.validate()){
      //  Navigator.of(context).push(
      //   MaterialPageRoute(builder: (context) => const OtpScreen())
      // );
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
                  mail=value;
                }, 
                prefixWord: "",
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
                validate();
              }
            ),
             SizedBox(
                height: size.height * 0.03,
            ),
          ],),
        ),
        ),
    );
  }
}