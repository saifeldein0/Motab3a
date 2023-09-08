import 'package:application/generated/l10n.dart';
import 'package:application/helper.dart';
import 'package:flutter/material.dart';

class RestExcersice extends StatelessWidget {
  const RestExcersice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFde98bd),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color(0xFFde98bd),
        title:  Text(S.of(context).rest_exercise_title,
          style:const TextStyle(
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding:const EdgeInsets.all(15.0),
                child: Text(S.of(context).rest_exercise_text_1,
                  style: const  TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Color.fromARGB(255, 236, 161, 192),
                      fontWeight: FontWeight.bold),
                  textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
                ),
              ),
            ),
            Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child:  Padding(
                padding: const EdgeInsets.all(12),
                child: Text(S.of(context).rest_exercise_text_2,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color.fromARGB(255, 236, 161, 192),
                      fontFamily: 'cairo'),
                  textDirection: Helper().isArabic()
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
              ),
            ),
            Padding(
              padding: const  EdgeInsets.all(10.0),
              child: Text(S.of(context).rest_exercise_text_3,
                style:const  TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(S.of(context).rest_exercise_text_4,
                style: const TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
            Padding(
              padding: const  EdgeInsets.all(10.0),
              child: Text(S.of(context).rest_exercise_text_5,
                style: const  TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: Helper().isArabic()
                    ? TextDirection.rtl
                    : TextDirection.ltr,
              ),
            ),
            Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child:  Padding(
                padding: const EdgeInsets.all(12),
                child: Text(S.of(context).rest_exercise_text_6,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color.fromARGB(255, 236, 161, 192),
                      fontFamily: 'cairo'),
                  textDirection: Helper().isArabic()
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(S.of(context).rest_exercise_text_7,
                style: const TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(S.of(context).rest_exercise_text_8,
                style: const TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                S.of(context).rest_exercise_text_9,
                style: const TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                S.of(context).rest_exercise_text_10,
                style: const TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(S.of(context).rest_exercise_text_11,
                style: const TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
             Padding(
              padding:const EdgeInsets.all(10.0),
              child: Text(S.of(context).rest_exercise_text_12,
                style:const TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection:
                    Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
