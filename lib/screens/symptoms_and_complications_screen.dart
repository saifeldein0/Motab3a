import 'package:application/generated/l10n.dart';
import 'package:application/helper.dart';
import 'package:flutter/material.dart';

class SymptomsAndComplicationsScreen extends StatelessWidget {
  const SymptomsAndComplicationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFde98bd),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color(0xFFde98bd),
        title:  Text(S.of(context).symptomsAppBar,
          style: const TextStyle(
            color: Color.fromARGB(255, 236, 161, 192),
            fontWeight: FontWeight.bold,
            fontSize: 17,
            fontFamily: 'cairo'
          ),
        ),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 10,
      ),
      body:  SingleChildScrollView(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/complications.jpg',height:550,width: 300,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 8,
                  margin: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color:const Color.fromARGB(255, 255, 255, 255),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90),
                    child: Text(
                      S.of(context).symptomsTitle1,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 236, 161, 192),
                          fontFamily: 'cairo'),
                    ),
                  ),
                ),
              ],
            ),
            
 Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(S.of(context).symptomsText1_1,
                  style: const TextStyle(fontSize: 20,  fontFamily: 'cairo',color: Colors.white),
                  textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    S.of(context).symptomsText1_2,
                  style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Text(
                    S.of(context).symptomsText1_3,
                  style:const TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Text(
                    S.of(context).symptomsText1_4,
                  style:const TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Text(
                    S.of(context).symptomsText1_5,
                  style:const TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Text(S.of(context).symptomsText1_6,
                  style:const TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Text(
                    S.of(context).symptomsText1_7,
                      style:const TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: Helper().isArabic()
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Text(
                    S.of(context).symptomsText1_8,
                  style:const TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Text(S.of(context).symptomsText1_9,
                  style:const TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                ),
              ),
            ],
          ),

            const Divider(thickness: 1.5,
            color: Color.fromARGB(255, 255, 255, 255),
            height: 50,
            indent: 50,
            endIndent: 50,),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 8,
                  margin:const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90),
                    child: Text(
                      S.of(context).symptomsTitle2,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 236, 161, 192),
                          fontFamily: 'cairo'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:const  EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_1,
                    style:const  TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
              padding:const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_2,
                    style:const TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_3,
                    style:const TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
          padding:const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_4,
                    style:const TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_5,
                  style:const TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_6,
                  style:const TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_7,
                    style:const TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_8,
                  style:const TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: Helper().isArabic()
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).symptomsText2_9,
                  style:const TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Colors.white),
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

