import 'package:flutter/material.dart';

class SymptomsAndComplicationsScreen extends StatelessWidget {
  const SymptomsAndComplicationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أعراض ومضاعفات الحمل'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الأعراض الخطيرة',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text('• صداع شديد لم يزول بالمسكنات.'),
            Text('• أضرابات في الرؤية (زغللة بالعين).'),
            Text('• تورم في اليدين أو القدمين، والوجه خاصة حول العينين.'),
            Text('• ألم في الجزء الأعلى من البطن (تحت الأضلاع على الجانب الأيمن).'),
            Text('• غثيان أو قيء.'),
            Text('• قلة إنتاج البول.'),
            Text('• ضعف وظائف الكبد.'),
            Text('• ضيق في التنفس.'),
            Text('• زيادة مفاجئة في الوزن.'),
            const SizedBox(height: 16),
            Text(
              'المضاعفات الخطيرة',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text('1. نوبات تشبه التشنج أو الصرع يحدث عادة بعد الأسبوع الـ ٢٠ من الحمل).'),
            Text('2. بطء نمو الجنين وانخفاض الوزن عند الولادة.'),
            Text('3. متلازمة هيلب (حالة تحدث في وقت متأخر من الحمل، تسبب تكسير كريات الدم الحمراء، ارتفاع إنزيمات الكبد، وانخفاض عدد الصفائح الدموية).'),
            Text('4. الولادة المبكرة.'),
            Text('5. الفشل الكلوي.'),
            Text('6. تليف الكبد.'),
            Text('7. انفصال المشيمة.'),
            Text('8. السكتة الدماغية.'),
            Text('9. أمراض القلب والأوعية الدموية.'),
          ],
        ),
      ),
    );
  }
}
