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
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TextEditingController _cbcController = TextEditingController();
  TextEditingController _kidneyFunctionsController = TextEditingController();
  TextEditingController _liverFunctionsController = TextEditingController();
  TextEditingController _bmiController = TextEditingController();
  TextEditingController _bloodPressureController = TextEditingController();

  void _submitTestResults() async {
    User? user = _auth.currentUser;
    if (user != null) {
      String userId = user.uid;
      String name = user.displayName ?? '';

      String cbcResult = _cbcController.text;
      String kidneyFunctionsResult = _kidneyFunctionsController.text;
      String liverFunctionsResult = _liverFunctionsController.text;
      String bmiResult = _bmiController.text;
      String bloodPressureResult = _bloodPressureController.text;

      // Save the test results to Firestore
      await _firestore.collection('tests').add({
        'userId': userId,
        'name': name,
        'cbcResult': cbcResult,
        'kidneyFunctionsResult': kidneyFunctionsResult,
        'liverFunctionsResult': liverFunctionsResult,
        'bmiResult': bmiResult,
        'bloodPressureResult': bloodPressureResult,
        'timestamp': FieldValue.serverTimestamp(),
      });

      // Show a success message or navigate to the next screen
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: AlertDialog(
              
              title: Text(S.of(context).results_saved_title),
              content: Text(S.of(context).results_saved_message),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(S.of(context).confirm),
                ),
              ],
            ),
          );
        },
      );
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
            CustomTextField(
                lablelText: S.of(context).cbc_label,
                textfieldcontroller: _cbcController),
            const SizedBox(height: 10),
            CustomTextField(
                lablelText: S.of(context).kidney_functions_label,
                textfieldcontroller: _kidneyFunctionsController),
            const SizedBox(height: 10),
            CustomTextField(
                lablelText: S.of(context).liver_functions_label,
                textfieldcontroller: _liverFunctionsController),
            const SizedBox(height: 10),
            CustomTextField(
                lablelText: S.of(context).bmi_label,
                textfieldcontroller: _bmiController),
            const SizedBox(height: 10),
            CustomTextField(
                lablelText: S.of(context).blood_pressure_label,
                textfieldcontroller: _bloodPressureController),
            const SizedBox(height: 20),
            CustomButton(
                ontap: () {
                  _submitTestResults();
                },
                text: S.of(context).save_results_button)
          ],
        ),
      ),
    );
  }
}
