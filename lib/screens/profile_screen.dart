import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _placeController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _educationLevelController = TextEditingController();
  TextEditingController _workController = TextEditingController();
  TextEditingController _numPregnanciesController = TextEditingController();
  TextEditingController _numDeliveriesController = TextEditingController();
  TextEditingController _lastDeliveryTypeController = TextEditingController();
  TextEditingController _lastDeliveryTypeTypeController = TextEditingController();
  TextEditingController _lastPeriodDateController = TextEditingController();
  TextEditingController _weeksPregnantController = TextEditingController();
  TextEditingController _complicationsController = TextEditingController();
  TextEditingController _medicalHistoryController = TextEditingController();
  TextEditingController _bmiController = TextEditingController();

  void _saveProfile() async {
    User? user = _auth.currentUser;
    if (user != null) {
      String userId = user.uid;
      String name = _nameController.text;
      String age = _ageController.text;
      String place = _placeController.text;
      String address = _addressController.text;
      String educationLevel = _educationLevelController.text;
      String work = _workController.text;
      String numPregnancies = _numPregnanciesController.text;
      String numDeliveries = _numDeliveriesController.text;
      String lastDeliveryType = _lastDeliveryTypeController.text;
      String lastDeliveryTypeType = _lastDeliveryTypeTypeController.text;
      String lastPeriodDate = _lastPeriodDateController.text;
      String weeksPregnant = _weeksPregnantController.text;
      String complications = _complicationsController.text;
      String medicalHistory = _medicalHistoryController.text;
      String bmi = _bmiController.text;

      // Save the user's profile data to Firestore
      await _firestore.collection('users').doc(userId).set({
        'name': name,
        'age': age,
        'place': place,
        'address': address,
        'education_level': educationLevel,
        'work': work,
        'num_pregnancies': numPregnancies,
        'num_deliveries': numDeliveries,
        'last_delivery_type': lastDeliveryType,
        'last_delivery_type_type': lastDeliveryTypeType,
        'last_period_date': lastPeriodDate,
        'weeks_pregnant': weeksPregnant,
        'complications': complications,
        'medical_history': medicalHistory,
        'bmi': bmi,
      });

      // Show a success message or navigate to the next screen
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Profile Saved'),
            content: Text('Your profile information has been saved.'),
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
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Age'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _placeController,
                decoration: InputDecoration(labelText: 'Place (Country/City)'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _educationLevelController,
                decoration: InputDecoration(labelText: 'Education Level'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _workController,
                decoration: InputDecoration(labelText: 'Work'),
              ),
              SizedBox(height: 20),
              // Add other fields for the second and third parts of the profile here
              ElevatedButton(
                onPressed: _saveProfile,
                child: Text('Save Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
