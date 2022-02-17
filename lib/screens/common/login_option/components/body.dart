import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/doctor/login/doctor_login.dart';
import 'package:medfast/screens/patient/login/login.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: Column(children: [
          SizedBox(
              height: size.height * 0.08,
          ),
          Image.asset('assets/images/signup.gif'),
          SizedBox(
              height: size.height * 0.03,
          ),
          const Text("Choose Account", 
          style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),),
          SizedBox(
              height: size.height * 0.02,
          ),
          const Text("Ingia kwenye Account yako ya zamani", 
          style: TextStyle( fontSize: 14, color: Colors.black38, ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
              height: size.height * 0.03,
          ),
          MedFastButton(
            text: "Doctor Login", 
            textColor: Colors.white, 
            backgroundColor: Colors.blueGrey, 
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DoctorLogin())
              );
            }
          ),
          SizedBox(
              height: size.height * 0.03,
          ),
          MedFastButton(
            text: "Client Login", 
            textColor: Colors.white, 
            backgroundColor: Colors.lightBlueAccent, 
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ClientLoginScreen())
              );
            }
          ),
           
        ],),
        
        ),
    );
  }
}