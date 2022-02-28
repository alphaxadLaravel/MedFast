import 'package:flutter/material.dart';
import 'package:medfast/screens/common/constants/constants.dart';
import 'package:medfast/screens/common/constants/routes.dart';
import 'package:medfast/screens/common/onboard/onboardscreen.dart';
import 'package:medfast/screens/common/welcome/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isSeen;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isSeen = prefs.getInt('onBoard');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      title: 'MedFast',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute:isSeen !=0 ?OnBoardScreen.id : WelcomeScreen.id,
      routes: routes,
    );
  }
}


