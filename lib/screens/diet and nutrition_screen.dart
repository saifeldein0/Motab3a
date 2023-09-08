import 'package:application/generated/l10n.dart';
import 'package:application/helper.dart';
import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFde98bd),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color(0xFFde98bd),
        title: Text(
          S.of(context).dietAppBar,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: Text(
                      S.of(context).diettitle1,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromARGB(255, 236, 161, 192),
                          fontFamily: 'cairo'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext1,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext2,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext3,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext4,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: 50,
                  indent: 50,
                  endIndent: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Text(
                          S.of(context).diettitle2,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color.fromARGB(255, 236, 161, 192),
                              fontFamily: 'cairo'),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext5,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext6,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext7,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext8,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext9,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).diettext10,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'cairo', color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
