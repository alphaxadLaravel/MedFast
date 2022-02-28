import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/constants.dart';
import 'package:medfast/screens/common/constants/textfields.dart';
import 'package:medfast/screens/doctor/forgot/forgot_password.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? id;
  String? pwd;
  bool obscured = true;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void validate(){
    if(formkey.currentState!.validate()){

    }else{

    }
  }

  TextEditingController mct = TextEditingController();
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
            
              FieldInput(
              type: TextInputType.text,
              hint: "MCT ID",
              labelname: "Username",
              prefix: Icons.document_scanner_sharp,
              controller: username, 
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
                height: size.height * 0.03,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: obscured,
             controller: password,
             decoration: InputDecoration(
               hintText: "Your Password",
               labelText: "Password",
               border: inputBorder(),
               focusedBorder: focusedInputBorder(),
                focusedErrorBorder: focusedErrorBorder(),
                errorBorder: errorInputBorder(),
               prefixIcon: const Icon(Icons.lock),
               suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                      obscured = !obscured;
                    });
                  },
                  child:Icon(obscured ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              validator: (value){
                  if(value!.isEmpty){
                    return "Please provide the password";
                  }else if(value.length < 8){
                    return "The password too short";
                  }
              },
            ),
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
                validate();
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
        
        ),
    );
  }
}