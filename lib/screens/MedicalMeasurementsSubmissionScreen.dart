import 'dart:io';

import 'package:application/generated/l10n.dart';
import 'package:application/helper.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/custom_textfields.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';

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
  File? _imageFile;

  Future<String?> uploadImage(
      File imageFile, String userId, String imageName) async {
    try {
      final Reference storageReference =
          FirebaseStorage.instance.ref().child('Sonar/$imageName');

      UploadTask uploadTask = storageReference.putFile(imageFile);

      TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);

      String imageUrl = await taskSnapshot.ref.getDownloadURL();
      return imageUrl;
    } catch (e) {
      print('Error uploading image: $e');
      return null;
    }
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
    }
  }

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
              String? imageUrl;
        if (_imageFile != null) {
          // Use the user's name as the filename
          String imageName = '$userName.png';
          imageUrl = await uploadImage(_imageFile!, userId, imageName);
        }

        // Create a map with the data to be saved, including the user's name
        Map<String, dynamic> data = {
          'userId': userId, // Link the test result to the user
          'timestamp': FieldValue.serverTimestamp(), // Add a server timestamp
          'bloodPressure': bloodPressureController.text,
          'proteinInUrine': proteinInUrineController.text,
          'weight': weightController.text,
          'fetusMovement': fetusMovementController.text,
          'sonar': sonarController.text,
          'name': userName,
          'sonarUrl': imageUrl, // Add the user's name to the data
        };

        // Add the data to the 'test_results' collection
        await testResults.add(data);

        // Show a success message or navigate to another screen
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
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
            );
          },
        );

        double newWeight = double.tryParse(weightController.text) ?? 0.0;
        double? lastWeight = await getLastWeight(userId);
        print('last weight : $lastWeight');
        if (newWeight != 0.0) {
          if (lastWeight != null && newWeight - lastWeight >= 1.0) {
            setState(() {
              weightErrorMessage = S.of(context).weight_warning;
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
            bloodPressureWarning = S.of(context).blood_pressure_warning;
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
              title: Text(S.of(context).error_title),
              content: Text(S.of(context).user_data_not_found),
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
    } catch (e) {
      // Handle errors
      print('Error saving test results: $e');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(S.of(context).error_title),
            content: Text(S.of(context).error_message),
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
            S.of(context).test_input_label,
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
            Image.asset(
              'images/bloodpressure.jpg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 10),
            Text(
              S.of(context).blood_pressure_instructions,
              textAlign: TextAlign.start,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            const SizedBox(height: 10),

            CustomTextField(
                lablelText: S.of(context).blood_pressure_label,
                textfieldcontroller: bloodPressureController),
            Text(
              bloodPressureWarning,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Color.fromARGB(255, 236, 161, 192),
              height: 50,
              indent: 50,
              endIndent: 50,
            ),

            const SizedBox(height: 10),
            //Image.asset(''),
            Text(
              S.of(context).protein_in_urine_instructions,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            CustomTextField(
              lablelText: S.of(context).protein_in_urine_label,
              textfieldcontroller: proteinInUrineController,
            ),
            const Divider(
              thickness: 1.5,
              color: Color.fromARGB(255, 236, 161, 192),
              height: 50,
              indent: 50,
              endIndent: 50,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/weight.jpg',
              width: 300,
              height: 300,
            ),
            Text(
              S.of(context).weight_instructions,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            CustomTextField(
              lablelText: S.of(context).weight_label,
              textfieldcontroller: weightController,
            ),
            Text(
              weightErrorMessage,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Color.fromARGB(255, 236, 161, 192),
              height: 50,
              indent: 50,
              endIndent: 50,
            ),
            const SizedBox(height: 10),
            Text(
              S.of(context).fetus_movement_instructions,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            CustomTextField(
              lablelText: S.of(context).fetus_movement_label,
              textfieldcontroller: fetusMovementController,
            ),

            const SizedBox(height: 10),
            Text(
              S.of(context).sonar_instructions,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'cairo', fontSize: 14),
            ),
            CustomTextField(
              lablelText: S.of(context).sonar_label,
              textfieldcontroller: sonarController,
            ),

            const SizedBox(height: 20),
              _imageFile != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.file(_imageFile!),
                  )
                : const SizedBox(),
            CustomButton(
              ontap: () {
                _pickImage(); // Open the image picker
              },
              text: S.of(context).pick_sonar_image,
            ),
            // Save button
            CustomButton(
              ontap: () {
                _saveTestResults();
              },
              text: S.of(context).save_test_results_button,
            ),
          ],
        ),
      ),
    );
  }
}
