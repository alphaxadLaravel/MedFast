
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MedFastButton extends StatelessWidget {
  final String text;
  final Color textColor, backgroundColor;
  final VoidCallback onPressed;
  const MedFastButton({ 
    Key? key ,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: const EdgeInsetsDirectional.all(16),
          color: backgroundColor, 
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16),
          ),
        ),
      )
    );
  }
}