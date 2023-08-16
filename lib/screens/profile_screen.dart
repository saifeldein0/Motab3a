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

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot profileSnapshot = await _firestore.collection('users').doc(user.uid).get();
      Map<String, dynamic> profileData = profileSnapshot.data() as Map<String, dynamic>;

      _nameController.text = profileData['name'] ?? '';
      _ageController.text = profileData['age'] ?? '';
      _placeController.text = profileData['place'] ?? '';
      _addressController.text = profileData['address'] ?? '';
      _educationLevelController.text = profileData['education_level'] ?? '';
      _workController.text = profileData['work'] ?? '';
      _numPregnanciesController.text = profileData['num_pregnancies'] ?? '';
      _numDeliveriesController.text = profileData['num_deliveries'] ?? '';
      _lastDeliveryTypeController.text = profileData['last_delivery_type'] ?? '';
      _lastDeliveryTypeTypeController.text = profileData['last_delivery_type_type'] ?? '';
      _lastPeriodDateController.text = profileData['last_period_date'] ?? '';
      _weeksPregnantController.text = profileData['weeks_pregnant'] ?? '';
      _complicationsController.text = profileData['complications'] ?? '';
      _medicalHistoryController.text = profileData['medical_history'] ?? '';
      _bmiController.text = profileData['bmi'] ?? '';
    }
  }



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
              TextField(
                controller: _numPregnanciesController,
                decoration: InputDecoration(labelText: 'Number of pregnancies'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _numDeliveriesController,
                decoration: InputDecoration(labelText: 'Number of deliveries'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _lastDeliveryTypeController,
                decoration: InputDecoration(labelText: 'Last delivery type'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _lastDeliveryTypeTypeController,
                decoration: InputDecoration(labelText: 'Last delivery type details'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _lastPeriodDateController,
                decoration: InputDecoration(labelText: 'Last period date'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _weeksPregnantController,
                decoration: InputDecoration(labelText: 'Weeks pregnant'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _complicationsController,
                decoration: InputDecoration(labelText: 'Complications'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _medicalHistoryController,
                decoration: InputDecoration(labelText: 'Medical history'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _bmiController,
                decoration: InputDecoration(labelText: 'BMI'),
              ),
              SizedBox(height: 20),
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
