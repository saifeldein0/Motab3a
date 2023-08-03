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
        title: const Text(
          "  الادوية",
          style: TextStyle(
              color: Color.fromARGB(255, 236, 161, 192),
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontFamily: 'cairo'),
        ),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 10,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '⬤  يجب عليكى الحفاظ على الجرعة اليوميه الموصى بعا من قبل الطبيب المعالج (لادوية الضغط والسيولة ) وعدم تغير الجرعة إلا بعد مراجعة طبيبك',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '⬤  الالتزام بمواعيد وطريقة اخذ الدواء اليومية',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '⬤ 	الالتزام بالمكملات الغذائية اليومية بالجرعة الموصى بها من قبل الطبيب',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '⬤  قد يكون أستخدمك اى نوع من الادوية فيه تعارض مع ادويتك لذلك يجب عليكى مراجعة طبيبك قبل أستخدام اى دواء.',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
