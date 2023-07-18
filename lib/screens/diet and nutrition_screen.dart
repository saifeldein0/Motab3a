import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 161, 192),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text(
        "      الغذاء والتغذية   " ,
          style: TextStyle(
              color: const Color.fromARGB(255, 236, 161, 192),
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontFamily: 'cairo'),
        ),shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)), elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 10),
                    child: Text(
                      'طعام ينصح به',
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
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ 	أتباع نظام غذائى متكامل يحتوى على كل العناصر الغذائية للأم والجنين.',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ 	الإكثار من تناول الفواكه والخضروات والحبوب الكاملة.',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              const  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤  البروتينات: ينصح بالحصول عليها من اللحوم الخالية من الدهون (مثل: الدجاج، الأسماك، والبقول، وغيرها) كل يوم.',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              const  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ 	الدهون: ينصح بالحصول عليها من المصادر النباتية (مثل: زيت الزيتون)، وتجنب الدهون المشبعة ذات المصدر الحيواني (مثل: الزبدة).',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
          const Divider(thickness: 1.5,
            color: Color.fromARGB(255, 255, 255, 255),
            height: 50,
            indent: 50,
            endIndent: 50,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Card(
                      elevation: 10,
                      margin:const  EdgeInsets.symmetric(
                          horizontal: 90, vertical: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                    "تجنبي هذا الطعام",
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
               const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ 	تجنب الأطعمة المصنعة كاللحوم والاسماك المصنعة (النقانق, البسطرة ،الانشون, الرنجة , الفسيخ ).',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
               const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ 	الحد من تناول سمك التونة والا يزيد على أربع علب متوسطة الحجم (وزن الصافي = 140 جرامًا لكل علبة) في الأسبوع.',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              const  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ 	بعض أنواع الأسماك الزيتية التي قد تحتوي على مواد كيميائية من التلوث، وقد تتراكم في الجسم مع مرور الوقت وتكون ضارة؛ لذا ينصح بألا تزيد على حصتين أسبوعيًّا (مثل: سمك الماكريل، والسردين، والسالمون، والتونة الطازجة؛ حيث لا يعتبر سمك التونة المعلب أسماكًا زيتية).',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              const  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ 	تجنب تناول الأطعمة المعلبة والوجبات السريعة ووجبات المطاعم لاحتوائهم على نسبة كبيرة من الصوديوم الذي يطيل من تاريخ صلاحية المنتج الغذائي.',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤ 	الكافيين: وهي مادة توجد بشكل طبيعي في الأطعمة (مثل: الشاي، والقهوة، والشوكولاته)، وبعض المشروبات الغازية، مشروبات الطاقة أو بعض المسكنات، وينصح بالحد من تناوله أثناء الحمل، حيث إن كثرته تزيد خطر حدوث الإجهاض وانخفاض وزن الطفل عند الولادة.',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              const  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '⬤  تجنب شراء المنتجات المحتوية على أحادي جلوتامات الصوديوم ويرمز له بالرمز (E621)  أو استخدامه أثناء الطبخ لتقليل من الملح في الطعام؛ حيث إنه يسبب احتباس السوائل؛ مما يؤدي إلى ارتفاع ضغط الدم.  ',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'cairo', color: Colors.white),
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
