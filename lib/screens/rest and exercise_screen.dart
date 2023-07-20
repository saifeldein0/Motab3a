import 'package:flutter/material.dart';

class RestExcersice extends StatelessWidget {
  const RestExcersice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 161, 192),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "  الراحة وممارسة الرياضة",
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  ' عدم ممارسة  أى مجهود بدنى وحاولى ان تحصلى على وقت من الراحة والاسترخاء \n يجب عليكى الحصول على قسط كاف من النوم على الاقل 8 ساعات ليلاُ وأخذ قسطاُ من الراحة نهارا على الاقل ساعتين ',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'cairo',
                      color: Color.fromARGB(255, 236, 161, 192),
                      fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'إذا كنتِ لا تشعرين بمضاعفات وبعد أستشارة الطبيب',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color.fromARGB(255, 236, 161, 192),
                      fontFamily: 'cairo'),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ يسمح لك بممارسة المشي الهادئ أو السريع ويعتبر المشي من الرياضات الآمنة لك بشرط أن تمارسيه على أرض ملائمة غير مرتفعة، يمكنك ممارسة المشي يوميًا بما لا يزيد عن نصف ساعة، لكن تذكري أن تأخذي قسطًا يكفيك من الراحة إن شعرت بأي إرهاق.',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ عليك ممارسة المشي بعد الإفطار بساعتين، وتذكري أن تحملي معك زجاجة من الماء أو العصير غير المحلى وإن شعرت بتعب فعليك التوقف والراحة.',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ ولتعلمي أن المشي يساعدك على الحفاظ على اللياقة والوزن المناسب أثناء الحمل ويقوي القلب بوجه عام حتى في حين الولادة.',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'أنصتي إلى شكوى بدنك',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color.fromARGB(255, 236, 161, 192),
                      fontFamily: 'cairo'),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'كما هو مهم ممارسة التدريبات فمراقبة العلامات الخاصة بأي مشكلة مهم أيضًا. أوقفي التدريب واتصلي بمسؤولى الرعاية الصحية في الحالات التالية:',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '•	النزيف المهبلي',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '•	الدوخة',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '•  الصداع',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '•	الشعور بتزايد ضيق النفس قبل البدء في ممارسة الرياضة',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '•	ألم الصدر',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
