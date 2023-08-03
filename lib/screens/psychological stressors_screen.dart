import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Stress extends StatelessWidget {
  const Stress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFde98bd),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "  الضغوطات النفسية ",
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
          mainAxisAlignment: MainAxisAlignment.center,
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
                  'الضغط النفسي للحامل الحمل هو الوقت الذي تتعرض فيه المرأة للكثير من التغيرات سواء كان التغير في الجسم أو في المشاعر، وهذه التغييرات قد تضيف ضغوطات نفسية مثل التوتر والإجهاد الذي قد يسبب العديد من المشكلات في النوم، والإصابة بالصداع وفقدان الشهية، أما الشعور بالتوتر والضغط النفسي الشديد والمستمر لفترة طويلة يُمكن أن يسبب ارتفاع ضغط الدم وأمراض القلب، ويمكن أن تسبب الولادة المبكرة أو ولادة طفل بوزن منخفض عن الطبيعي أقل من 2 كيلوغرام',
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
                  'تأثير الضغط النفسي على الجنين ',
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
                'الضغوظ النفسية والتوتر يُعدّ أمرًا من الأمور الطبيعية التي قد تتعرض لها الحامل أثناء فترة الحمل، فعند الشعور بالتوتر يفرز الجسم مجموعةً من الكورتيزول وهرمونات التوتر الأخرى التي تسبب تسارعًا في نبضات القلب، وقد يكون هذا التوتر مؤقتًا، ثم يعود الجسم إلى حالة التوازن والاستقرار، أما في حال التوتر والإجهاد المستمر والمزمن يمكن أن تسبب ردة الفعل ذاتها استجابةً التهابيةً قد تؤثر على صحة الأم والجنين، وتُوجد العديد من الدراسات التي أثبتت أن الضغوطات النفسية المزمنة يُمكن أن تزيد خطر الولادة المبكرة وولادة طفل بوزن منخفض عن الطبيعي؛ مما يسبب مشكلات للطفل؛ فقد يسهم التوتر في وجود اختلافات دقيقة في نمو المخ وقد تؤدي إلى مشكلات سلوكية مع نمو الطفل  ، وقد لوحظ أن التوتر قد يسبب أعراضًا على الأم؛ كالصداع أو مشكلة في النوم أو الإفراط في تناول الطعام.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'cairo',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
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
                  'أهم المشكلات الأُخرى التي قد تسببها الضغوط النفسية ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 236, 161, 192),
                      fontFamily: 'cairo'),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'تسمم الحمل: تسمم الحمل من مضاعفات الحمل التي تؤثر على ضغط الدّم، وقد تؤدي إلى الولادة المبكرة؛ مما يؤدي إلى ارتفاع في ضغط الدّم؛ فقد أثبتت أبحاث أن الإجهاد والتوتر المزمن يمكن أن يسبب ارتفاع ضغط الدّم، وفي حالات نادرة يسبب تسمم الحمل؛ لذا الضغط النفسي لا يعني بالضرورة ارتفاع ضغط الدم أو تسمم الحمل.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'cairo',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
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
                  'الحد من الضغط النفسي لدى الحامل',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 236, 161, 192),
                      fontFamily: 'cairo'),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                ' يُعدّ من المهم الحد وتجنب الضغوطات النفسية أثناء فترة الحمل، وذلك عبر إدارة التوتر والإجهاد قبل أن يؤثر ذلك على صحة الطفل والأم، ويمكن التخفيف أو الحد من الضغوطات النفسية باتباع ما يأتي:',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'cairo',
                  color: Colors.white,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ الابتعاد قدر الإمكان عن التفكير في الأمور التي قد تزيد من القلق والتوتر.',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ محاولة الراحة قدر الإمكان لتجنب أي ضغط نفسي على الأم. ',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ التحدث مع شخص موثوق عن المخاوف والمشاعر المصاحبة للأم في فترة الحمل.  ',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ ممارسة التمارين الرياضية بانتظام والتمارين المناسبة للحمل. ',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤	ممارسة تمارين اليوغا أو التأمل أو التنفس أو الاسترخاء. ',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ ممارسة النشاطات المختلفة والمفضلة كالقراءة ومشاهدة التلفزيون أو غيرها من الأنشطة. ',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ قضاء بعض الوقت مع الأشخاص الذين يُشعِرون بالهدوء والسعادة وطلب المساعدة عند الحاجة إليها. ',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'cairo', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '⬤ اتباع نظام غذائي صحي كامل ومتوازن للمحافظة على صحة الطفل والجنين ',
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
