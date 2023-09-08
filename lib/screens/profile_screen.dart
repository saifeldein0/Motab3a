import 'package:application/generated/l10n.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/custom_textfields.dart';
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
  TextEditingController _lastDeliveryTypeTypeController =
      TextEditingController();
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
      DocumentSnapshot profileSnapshot =
          await _firestore.collection('users').doc(user.uid).get();
      Map<String, dynamic> profileData =
          profileSnapshot.data() as Map<String, dynamic>;

      _nameController.text = profileData['name'] ?? '';
      _ageController.text = profileData['age'] ?? '';
      _placeController.text = profileData['place'] ?? '';
      _addressController.text = profileData['address'] ?? '';
      _educationLevelController.text = profileData['education_level'] ?? '';
      _workController.text = profileData['work'] ?? '';
      _numPregnanciesController.text = profileData['num_pregnancies'] ?? '';
      _numDeliveriesController.text = profileData['num_deliveries'] ?? '';
      _lastDeliveryTypeController.text =
          profileData['last_delivery_type'] ?? '';
      _lastDeliveryTypeTypeController.text =
          profileData['last_delivery_type_type'] ?? '';
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

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(S.of(context).profile_saved_title),
            content: Text(S.of(context).profile_saved_message),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(S.of(context).confirm),
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
      backgroundColor: const Color(0xFFfaeaf0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 161, 192),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            S.of(context).profile_title,
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
              lablelText: S.of(context).name_label,
              textfieldcontroller: _nameController,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              textfieldcontroller: _ageController,
              lablelText: S.of(context).age_label,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              textfieldcontroller: _placeController,
              lablelText: S.of(context).place_label,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              textfieldcontroller: _addressController,
              lablelText: S.of(context).address_label,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              textfieldcontroller: _educationLevelController,
              lablelText: S.of(context).education_level_label,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              textfieldcontroller: _workController,
              lablelText: S.of(context).work_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _numPregnanciesController,
              lablelText: S.of(context).num_pregnancies_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _numDeliveriesController,
              lablelText: S.of(context).num_deliveries_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _lastDeliveryTypeController,
              lablelText: S.of(context).last_delivery_type_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _lastDeliveryTypeTypeController,
              lablelText: S.of(context).last_delivery_type_details_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _lastPeriodDateController,
              lablelText: S.of(context).last_period_date_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _weeksPregnantController,
              lablelText: S.of(context).weeks_pregnant_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _complicationsController,
              lablelText: S.of(context).complications_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _medicalHistoryController,
              lablelText: S.of(context).medical_history_label,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              textfieldcontroller: _bmiController,
              lablelText: S.of(context).bmi_label,
            ),
            const SizedBox(height: 20),
            CustomButton(
                ontap: () {
                  _saveProfile();
                },
                text: S.of(context).save_button_text)
          ],
        ),
      ),
    );
  }
}
