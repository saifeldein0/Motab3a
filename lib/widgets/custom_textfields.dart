import 'package:application/helper.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.lablelText, required this.textfieldcontroller});
  String? lablelText;
  TextEditingController? textfieldcontroller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
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
              style: const TextStyle(
                fontFamily: 'Cairo',
                color: Color.fromARGB(255, 96, 96, 96),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          cursorColor: const Color(0xFFde98bd),
        ),
      ),
    );
  }
}
