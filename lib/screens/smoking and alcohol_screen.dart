
import 'package:application/generated/l10n.dart';
import 'package:application/helper.dart';
import 'package:flutter/material.dart';

class Smoking extends StatelessWidget {
  const Smoking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFde98bd),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor:const Color(0xFFde98bd),
        title:  Text(S.of(context).smoking_title,
          style: const TextStyle(
              color: Color.fromARGB(255, 236, 161, 192),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'cairo'),
        ),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 10,
      ),
      body: ListView(
      
          children: [
            Card(
              elevation: 10,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child:  Padding(
                padding: const EdgeInsets.all(30),
                child: Text(S.of(context).smoking_text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 236, 161, 192),
                    fontFamily: 'cairo',
                  ),
                  textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
                ),
              ),
            ),
          ],
        ),
      
    );
  }
}
