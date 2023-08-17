import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.lablelText, required this.textfieldcontroller});
  String? lablelText;
  TextEditingController? textfieldcontroller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: TextFormField(
          textAlign: TextAlign.right,
          controller: textfieldcontroller!,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFde98bd),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFde98bd),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
           
            hintTextDirection: TextDirection.rtl,
            label: Text(
              lablelText!,
              style: TextStyle(
                fontFamily: 'Cairo',
                color: const Color.fromARGB(255, 96, 96, 96),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              textAlign: TextAlign.right,
            ),
             
          ),
          cursorColor: Color(0xFFde98bd),
        ),
      ),
    );
  }
}
