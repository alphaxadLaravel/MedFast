import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/doctor/doctorSignup/doctor_signup.dart';
import 'package:medfast/screens/patient/clientsignup/client_signup.dart';

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
          Image.asset('assets/images/account.gif'),
          SizedBox(
              height: size.height * 0.03,
          ),
          const Text("Choose Account", 
          style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),),
          SizedBox(
              height: size.height * 0.02,
          ),
          const Text("Kama wewe sio Doctor \n Fungua Account ya Client tukuhudumie!", 
          style: TextStyle( fontSize: 14, color: Colors.black38, ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
              height: size.height * 0.03,
          ),
          MedFastButton(
            text: "Doctor Account", 
            textColor: Colors.white, 
            backgroundColor: Colors.blueGrey, 
            onPressed: (){
               Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DoctorSignupScreen())
              );
            }
          ),
          SizedBox(
              height: size.height * 0.03,
          ),
          MedFastButton(
            text: "Client Account", 
            textColor: Colors.white, 
            backgroundColor: Colors.lightBlueAccent, 
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ClientSignup())
              );
            }
          ),
           
        ],),
        
        ),
    );
  }
}