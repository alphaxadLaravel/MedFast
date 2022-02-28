import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/constants/textfields.dart';
import 'package:medfast/screens/common/otp/otp_screen.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  String? simu;
  TextEditingController namba = TextEditingController();
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
                height: size.height * 0.05,
            ),
            Image.asset(
              'assets/images/account.gif',
              height: size.height * 0.35,
            ),
            SizedBox(
                height: size.height * 0.01,
            ),
            const Text("Client Login", 
            style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),),
            SizedBox(
                height: size.height * 0.02,
            ),
            const Text("Jaza namba yako ya simu, uliyofungulia Account zamani!", 
            style: TextStyle( fontSize: 14, color: Colors.black38, ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
                height: size.height * 0.038,
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
                simu=value;
              }, 
              prefixWord: "+255",
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
                validate();
              }
            ),
          ],),
        ),
        
        ),
    );
  }
}