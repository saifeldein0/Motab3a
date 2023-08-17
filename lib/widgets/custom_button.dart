import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.ontap, required this.text});
  VoidCallback? ontap;
  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:const Color(0xFFde98bd),
            borderRadius: BorderRadius.circular(20),
            boxShadow: CupertinoContextMenu.kEndBoxShadow,
          ),
          child:  Center(
            child: Text(
              text!,
              style:const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'cairo',
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
