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
          return AlertDialog(
            title: Text('Test Results Submitted'),
            content: Text('Your test results have been submitted.'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Results Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _cbcController,
                decoration: InputDecoration(labelText: 'CBC Test Result'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _kidneyFunctionsController,
                decoration: InputDecoration(labelText: 'Kidney Functions Result'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _liverFunctionsController,
                decoration: InputDecoration(labelText: 'Liver Functions Result'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _bmiController,
                decoration: InputDecoration(labelText: 'BMI Result'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _bloodPressureController,
                decoration: InputDecoration(labelText: 'Blood Pressure Result'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitTestResults,
                child: Text('Submit Test Results'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
