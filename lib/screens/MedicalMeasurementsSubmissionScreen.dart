import 'package:application/generated/l10n.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TestInputScreen extends StatefulWidget {
  const TestInputScreen({Key? key}) : super(key: key);

  @override
  _TestInputScreenState createState() => _TestInputScreenState();
}

class _TestInputScreenState extends State<TestInputScreen> {
  TextEditingController bloodPressureController = TextEditingController();
  TextEditingController proteinInUrineController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController fetusMovementController = TextEditingController();
  TextEditingController sonarController = TextEditingController();
  String bloodPressureWarning = '';

  String weightErrorMessage = '';

  void _saveTestResults() async {
    try {
      // Get the current user's ID
      String userId = FirebaseAuth.instance.currentUser?.uid ?? '';

      // Create a reference to the 'test_results' collection
      CollectionReference testResults =
          FirebaseFirestore.instance.collection('test_results');

      // Fetch the user's name from the 'users' collection
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      if (userSnapshot.exists) {
        String userName =
            (userSnapshot.data() as Map<String, dynamic>)['name'] ?? '';

        // Create a map with the data to be saved, including the user's name
        Map<String, dynamic> data = {
          'userId': userId, // Link the test result to the user
          'timestamp': FieldValue.serverTimestamp(), // Add a server timestamp
          'bloodPressure': bloodPressureController.text,
          'proteinInUrine': proteinInUrineController.text,
          'weight': weightController.text,
          'fetusMovement': fetusMovementController.text,
          'sonar': sonarController.text,
          'name': userName, // Add the user's name to the data
        };

        // Add the data to the 'test_results' collection
        await testResults.add(data);

        // Show a success message or navigate to another screen
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Results Saved'),
              content: Text('Test results have been saved successfully.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );

        double newWeight = double.tryParse(weightController.text) ?? 0.0;
        double? lastWeight = await getLastWeight(userId);
        print('last weight : $lastWeight');
        if (newWeight != 0.0) {
          if (lastWeight != null && newWeight - lastWeight >= 1.0) {
            setState(() {
              weightErrorMessage =
                  'تحذير : الوزن الحالي لايجب ان يزيد عن 1 كيلو عن القياس الاخير';
            });
          } else {
            setState(() {
              weightErrorMessage = ''; // Clear the error message
            });
          }

          // Set the last recorded weight
          lastWeight = newWeight; // Update the lastWeight variable
        }

        String bloodPressureValue = bloodPressureController.text;

        if (isValidBloodPressure(bloodPressureValue) == false) {
          setState(() {
            bloodPressureWarning =
                'High blood pressure detected (more than 160/110). Please consult a doctor.';
          });
          return; // Return early if blood pressure is high
        } else {
          setState(() {
            bloodPressureWarning = ''; // Clear the warning
          });
        }
      } else {
        // Handle the case where the user document doesn't exist
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('User data not found.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      // Handle errors
      print('Error saving test results: $e');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('An error occurred while saving test results.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  bool isValidBloodPressure(String value) {
    try {
      List<String> parts = value.split(RegExp(r'[\/\\]'));

      if (parts.length != 2) {
        return false;
      }

      String systolicPart = convertToWesternNumerals(parts[0]);
      String diastolicPart = convertToWesternNumerals(parts[1]);

      int? systolic = int.tryParse(systolicPart);
      int? diastolic = int.tryParse(diastolicPart);

      if (systolic == null || diastolic == null) {
        return false;
      }

      return systolic <= 160 && diastolic <= 110;
    } catch (e) {
      return false;
    }
  }

  String convertToWesternNumerals(String input) {
    const arabicNumerals = '٠١٢٣٤٥٦٧٨٩';
    const westernNumerals = '0123456789';

    for (int i = 0; i < arabicNumerals.length; i++) {
      input = input.replaceAll(arabicNumerals[i], westernNumerals[i]);
    }

    return input;
  }

  Future<double> getLastWeight(String userId) async {
    try {
      // Create a reference to the 'test_results' collection for the user
      CollectionReference testResultsCollection =
          FirebaseFirestore.instance.collection('test_results');

      // Query the 'test_results' collection for weight entries for the user
      QuerySnapshot weightQuery = await testResultsCollection
          .where('userId', isEqualTo: userId)
          .orderBy('timestamp', descending: true)
          .limit(1)
          .get();

      // Check if there are any weight entries for the user

      // Get the most recent weight entry
      var weightEntry = weightQuery.docs.first.data() as Map<String, dynamic>;
      double lastWeight = double.parse(weightEntry['weight']);
      return lastWeight;
    } catch (e) {
      // Handle any errors that occur during the process
      print('Error fetching last weight: $e');
      return 0.0; // Return a default value in case of an error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfaeaf0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 161, 192),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            S.of(context).test_input_title,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'cairo'),
          ),
        ),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 10,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            //Image.asset(''),
            const Text(
              ' قياس الضغط كل 48 ساعة وقبل قياس الضغط يجب اتباع الارشادات التالية: \n  الالتزام بالراحة لمدة لا تقل عن 15 دقيقة( عدم بذل اى مجهود سواء نفسيا او بدنياً) .التأكد من حجم جهاز الضغط مناسب لذراع الأم. \nالالتزام بوضع الجلوس أثناء القياس استخدام  نفس الذراع فى كل مرة قياس وان بكون الذراع فى مستوى القلب',
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            const SizedBox(height: 10),

            CustomTextField(
                lablelText: 'Blood Pressure',
                textfieldcontroller: bloodPressureController),
            Text(
              bloodPressureWarning,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 10),
            //Image.asset(''),
            const Text(
              '\nقياس البروتين عن طريق الشرائط البولية عبارة عن اختبار طبّي يُجرى للكشف عن وجود البروتينات في البول، ومن أنواعها الألبومين أو الزلال يضم شريط فحص البول يتغير لونها بعد غمرها في عينة بول. يمكن قراءة النتيجة عادةً بعد 60- 120 ثانية من الغمس يبدأ الفحص بغمر الشريط تمامًا في عينة بول ممزوجة جيدًا لفترة قصيرة من الوقت، من ثم يرفع الشريط من الوعاء ويثبت على جداره للتخلص من البول الزائد. يترك الشريط بعد ذلك مدة معينة لحدوث التفاعل (عادةً من دقيقة إلى دقيقتين)، ثم تقرأ النتائج عبر مقارنة الألوان بالمقياس اللوني الذي توفره الشركة المصنعة يتغير اللون بوجود البروتين ضمن درجات مختلفة من اللون الأخضر وحتى اللون الأزرق. تتدرج النتائج وفق التالي: سلبية ثم أثر ثم 1+ و2+ و3+ و4 لأفضل نتيجة يفضل عمل الفحص صباحا وعدم أخذ العينة الاولى عند أفراغ المثانة ولكن العينه الوسطى عند أفراغ المثانه',
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            CustomTextField(
              lablelText: 'Protein in urine',
              textfieldcontroller: proteinInUrineController,
            ),

            const SizedBox(height: 10),

            const Text(
              ' متابعة الوزن اسبوعيا وذالك يكون صباحا قبل الافطار ويكون بنفس الميزان  فى كل مرة من المتوقع ان تزيد الأم الحامل من (نص كيلو الى كيلو ) أسبوعيا',
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            CustomTextField(
              lablelText: 'Weight',
              textfieldcontroller: weightController,
            ),
            Text(
              weightErrorMessage,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              '	متابعة حركة الجنين يوميا يجب على الام الحامل متابعة حركة الجنين بأستمرار, ,ان لا تقل حركة الجنين  عن 10 حركات فى الساعتين: \n ضعي يدك أو يديك على بطنك. احسبي العدد كل مرة تشعرين فيها بطفلك يتحرك. إذا شعرتِ بكثير من الحركات في الوقت نفسه، احسب ي عدد الحركات التي تشعرين بها. سجّلي التا ريخ والوقت الذي بدأتِ فيه بحساب عدد الحركات على جدول حركة الجنين',
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            CustomTextField(
              lablelText: 'Fetus Movement',
              textfieldcontroller: fetusMovementController,
            ),

            const SizedBox(height: 10),
            const Text(
              ' متابعة الماء حول الجنين ووزن الجنين كل اسبوعي',
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            CustomTextField(
              lablelText: 'SONAR',
              textfieldcontroller: sonarController,
            ),

            const SizedBox(height: 20),

            // Save button
            CustomButton(
              ontap: () {
                _saveTestResults();
              },
              text: 'Save Test Results',
            ),
          ],
        ),
      ),
    );
  }
}
