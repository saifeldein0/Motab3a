import 'package:flutter/material.dart';

class SymptomsAndComplicationsScreen extends StatelessWidget {
  const SymptomsAndComplicationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 236, 161, 192),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 236, 161, 192),
        title: const Text(
          'أعراض ومضاعفات الحمل',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 23,
            fontFamily: 'cairo'
          ),
        ),
      ),
      body:  SingleChildScrollView(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  elevation: 8,
                  margin: const EdgeInsets.all(28),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color:const Color.fromARGB(255, 255, 255, 255),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 90),
                    child: Text(
                      'الأعراض الخطيرة',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromARGB(255, 236, 161, 192),
                          fontFamily: 'cairo'),
                    ),
                  ),
                ),
              ],
            ),
            
const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ صداع شديد لم يزول بالمسكنات',
                  style: TextStyle(fontSize: 25,  fontFamily: 'cairo',color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ أضرابات في الرؤية (زغللة بالعين)',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ تورم في اليدين أو القدمين، والوجه خاصة حول العينين',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ ألم في الجزء الأعلى من البطن (تحت الأضلاع على الجانب الأيمن)',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ غثيان أو قيء',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ قلة إنتاج البول',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ ضعف وظائف الكبد',
                      style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ ضيق في التنفس',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '⬤ زيادة مفاجئة في الوزن',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo',
                      color: Colors.white),
                  textDirection: TextDirection.rtl,
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
                  margin:const EdgeInsets.all(30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 90),
                    child: Text(
                      'المضاعفات',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Color.fromARGB(255, 236, 161, 192),
                          fontFamily: 'cairo'),
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ نوبات تشبه التشنج أوالصرع يحدث عادة بعد الأسبوع ال ٢٠ من الحمل',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
              padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ بطء نمو الجنين وانخفاض الوزن عند الولادة',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ متلازمة هيلب: تحدث في وقت متأخر من الحمل،تسبب تكسير كريات الدم الحمراء،ارتفاع إنزيمات الكبد وانخفاض عدد الصفائح الدموية',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
          padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ الولادة المبكرة',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ الفشل الكلوي',
                  style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ تليف الكبد',
                  style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ انفصال المشيمة',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ السكتة الدماغية',
                  style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ أمراض القلب والأوعية الدموية',
                  style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        color: Colors.white),
                    textDirection: TextDirection.rtl,
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

