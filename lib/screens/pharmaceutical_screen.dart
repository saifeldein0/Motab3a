import 'package:application/generated/l10n.dart';
import 'package:application/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class pharmaticuals extends StatelessWidget {
  const pharmaticuals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFde98bd),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color(0xFFde98bd),
        title: Text(
          S.of(context).pharmatics_title,
          style: const TextStyle(
              color: Color.fromARGB(255, 236, 161, 192),
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontFamily: 'cairo'),
        ),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              S.of(context).pharmatics_text1,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              S.of(context).pharmatics_text2,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              S.of(context).pharmatics_text3,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
             
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              S.of(context).pharmatics_text4,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              
            ),
          ),
        ],
      ),
    );
  }
}
