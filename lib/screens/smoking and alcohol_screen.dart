
import 'package:flutter/material.dart';

class Smoking extends StatelessWidget {
  const Smoking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 161, 192),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "  اضرار التدخين والكحوليات ",
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
      body: Column(
        children: [
          Card(
            elevation: 10,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'عندما تدخن الحامل فإنها تستنشق السموم (مثل: النيكوتين، والرصاص، والزرنيخ، وأول أكسيد الكربون)؛ حيث تدخل هذه السموم المشيمة (النسيج الذي يربط الأم بالجنين)، وتمنع هذه السموم الجنين من الحصول على الإمدادات المناسبة من العناصر الغذائية والأكسجين التي يحتاجها للنمو. ويؤدى أيضا الى إنقاص وزن الجنين. يزيد من فرص حدوث الإجهاض وإرتفاع نسبة وفيات المواليد. قد يؤدي إلى حالات مرضية ضارة للحامل والجنين، مثل إنزلاق المشيمة،   وتسمم الحمل ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Color.fromARGB(255, 236, 161, 192),
                  fontFamily: 'cairo',
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
