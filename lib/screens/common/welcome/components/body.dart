// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:medfast/screens/common/acount_option/acount_option.dart';
import 'package:medfast/screens/common/constants/buttons.dart';
import 'package:medfast/screens/common/login_option/login_option.dart';

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
          Image.asset('assets/images/doctors.gif'),
          SizedBox(
              height: size.height * 0.03,
          ),
          const Text("Karibu MedFAST", 
          style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),),
          SizedBox(
              height: size.height * 0.03,
          ),
          const Text("Kama ni mara yako ya kwanza kutumia MedFAST , Fungua Account  mpya!", 
          style: TextStyle( fontSize: 14, color: Colors.black38, ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
              height: size.height * 0.03,
          ),
          MedFastButton(
            text: "Fungua Account", 
            textColor: Colors.white, 
            backgroundColor: Colors.lightBlueAccent, 
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ChooseAccount())
              );
            }
          ),
          SizedBox(
              height: size.height * 0.03,
          ),
           MedFastButton(
            text: "Login", 
            textColor: Colors.white, 
            backgroundColor: Colors.blueGrey, 
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginOption())
              );
            }
          ),
        ],),
        
        ),
    );
  }


}
