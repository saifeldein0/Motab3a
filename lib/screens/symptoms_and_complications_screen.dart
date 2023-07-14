import 'package:flutter/material.dart';

class SymptomsAndComplicationsScreen extends StatelessWidget {
  const SymptomsAndComplicationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'أعراض ومضاعفات الحمل',
          style: TextStyle(
            color: Color.fromARGB(255, 235, 112, 136),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  margin: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: const Color.fromARGB(255, 235, 112, 136),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 75),
                    child: Text(
                      'الأعراض الخطيرة',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '. صداع شديد لم يزول بالمسكنات',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  '. أضرابات في الرؤية (زغللة بالعين)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  '. تورم في اليدين أو القدمين، والوجه خاصة حول العينين',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  '. ألم في الجزء الأعلى من البطن (تحت الأضلاع على الجانب الأيمن)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  '. غثيان أو قيء',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  '. قلة إنتاج البول',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' . ضعف وظائف الكبد',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  '. ضيق في التنفس',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  '. زيادة مفاجئة في الوزن',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  margin: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: const Color.fromARGB(255, 235, 112, 136),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
                    child: Text(
                      'المضاعفات',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '* نوبات تشبه التشنج أوالصرع يحدث عادة بعد الأسبوع ال ٢٠ من الحمل',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '* بطء نمو الجنين وانخفاض الوزن عند الولادة',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Text(
                  '* متلازمة هيلب: تحدث في وقت متأخر من الحمل،تسبب تكسير كريات الدم الحمراء،ارتفاع إنزيمات الكبد وانخفاض عدد الصفائح الدموية',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    '* الولادة المبكرة',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Text(
                  '* الفشل الكلوي',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '* تليف الكبد',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '* انفصال المشيمة',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '* السكتة الدماغية',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '* أمراض القلب والأوعية الدموية',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

