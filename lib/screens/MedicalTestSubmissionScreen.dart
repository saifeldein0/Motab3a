  import 'package:flutter/material.dart';
  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';

  class MedicalTestSubmissionScreen extends StatefulWidget {
    @override
    _MedicalTestSubmissionScreenState createState() =>
        _MedicalTestSubmissionScreenState();
  }

  class _MedicalTestSubmissionScreenState
      extends State<MedicalTestSubmissionScreen> {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;

    TextEditingController _bloodPressureController = TextEditingController();
    TextEditingController _weightController = TextEditingController();
    TextEditingController _cbcController = TextEditingController();
    TextEditingController _kidneyFunctionsController = TextEditingController();
    TextEditingController _liverFunctionsController = TextEditingController();

    void _submitMedicalTestResult(
        String testType, TextEditingController controller) async {
      User? user = _auth.currentUser;
      if (user != null) {
        String userId = user.uid;
        String result = controller.text;

        // Save the test result to Firestore
        await _firestore.collection('TestResults').add({
          'userId': userId,
          'testType': testType,
          'result': result,
          'timestamp': FieldValue.serverTimestamp(),
        });

        // Show a success message or navigate to the next screen
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Test Result Submitted'),
              content: Text('Your test result has been submitted.'),
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
          title: Text('Medical Test Submission'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _bloodPressureController,
                decoration: InputDecoration(labelText: 'Blood Pressure Test'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _weightController,
                decoration: InputDecoration(labelText: 'Weight Test'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _cbcController,
                decoration: InputDecoration(labelText: 'CBC Test Result'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _kidneyFunctionsController,
                decoration: InputDecoration(labelText: 'Kidney Functions Test Result'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _liverFunctionsController,
                decoration: InputDecoration(labelText: 'Liver Functions Test Result'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _submitMedicalTestResult('Blood Pressure', _bloodPressureController);
                  _submitMedicalTestResult('Weight', _weightController);
                  _submitMedicalTestResult('CBC', _cbcController);
                  _submitMedicalTestResult('Kidney Functions', _kidneyFunctionsController);
                  _submitMedicalTestResult('Liver Functions', _liverFunctionsController);
                },
                child: Text('Submit Test Results'),
              ),
            ],
          ),
        ),
      );
    }
  }
