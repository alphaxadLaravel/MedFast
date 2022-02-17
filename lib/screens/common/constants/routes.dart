import 'package:flutter/material.dart';
import 'package:medfast/screens/common/login_option/login_option.dart';
import 'package:medfast/screens/common/onboard/onboardscreen.dart';
import 'package:medfast/screens/common/otp/otp_screen.dart';
import 'package:medfast/screens/common/terms/terms_conditions.dart';
import 'package:medfast/screens/common/welcome/welcome.dart';
import 'package:medfast/screens/doctor/doctorSignup/doctor_sign_2.dart';
import 'package:medfast/screens/doctor/doctorSignup/doctor_signup.dart';
import 'package:medfast/screens/doctor/forgot/forgot_password.dart';
import 'package:medfast/screens/doctor/login/doctor_login.dart';
import 'package:medfast/screens/patient/login/login.dart';


final Map<String, WidgetBuilder> routes = {
 OnBoardScreen.id: (context) => const OnBoardScreen(),
 WelcomeScreen.id: (context) => const WelcomeScreen(),
 TermsAndCondtion.id: (context) => const TermsAndCondtion(),
 ForgotPassword.id: (context) => const ForgotPassword(),
 LoginOption.id: (context) => const LoginOption(),
 OtpScreen.id: (context) => const OtpScreen(),
 ClientLoginScreen.id: (context) => const ClientLoginScreen(),
 DoctorSignupScreen.id: (context) => const DoctorSignupScreen(),
 DoctorLogin.id: (context) => const DoctorLogin(),
 OtherDoctorDetails.id: (context) => const OtherDoctorDetails(),
};