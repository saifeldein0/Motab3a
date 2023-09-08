import 'package:application/generated/l10n.dart';
import 'package:application/helper.dart';
import 'package:flutter/material.dart';

class Environment extends StatelessWidget {
  const Environment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFde98bd),
      appBar: AppBar(
        foregroundColor: const Color(0xFFde98bd),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text(
          S.of(context).environmentAppBar,
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
      body: ListView(
        children:[ Column(
          children: [
            Card(
              elevation: 13,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  S.of(context).environmenttext,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 236, 161, 192),
                    fontFamily: 'cairo',
                  ),
                  textDirection:
                      Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
                ),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}
