
import 'package:flutter/material.dart';

// rangi zitakazotumika kwenye hii MedFast app
const kPrimaryColor = Color(0xFF6F35A5);
const medFastLightColor = Color(0xFFF1E6FF);

// validation characters
final validName = RegExp(r"^([a-zA-Z]+[ ]?|[a-zA-Z]+['])+$");
final validEmail = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");


OutlineInputBorder focusedErrorBorder() {
    return const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(29),
          ),
          borderSide: BorderSide(color: Colors.lightBlueAccent),
        );
  }

  OutlineInputBorder focusedInputBorder() {
    return  const OutlineInputBorder(
         borderRadius: BorderRadius.all(
          Radius.circular(29),
        ),
        borderSide: BorderSide(color: Colors.lightBlueAccent),
        );
  }

   OutlineInputBorder errorInputBorder() {
    return const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(29),
          ),
          borderSide: BorderSide(color: Colors.red),
        );
  }

  OutlineInputBorder inputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(29),
        ),
        borderSide: BorderSide(color: Colors.black26),
       );
  }