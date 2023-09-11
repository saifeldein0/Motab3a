import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/custom_textfields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class LabResult extends StatefulWidget {
  LabResult({super.key});

  @override
  State<LabResult> createState() => _LabResultState();
}

class _LabResultState extends State<LabResult> {
  TextEditingController ureaController = TextEditingController();
  TextEditingController creatInUrineController = TextEditingController();
  TextEditingController albuminCreatininController = TextEditingController();
  TextEditingController altController = TextEditingController();
  TextEditingController astController = TextEditingController();
  TextEditingController alpController = TextEditingController();
  TextEditingController ggtController = TextEditingController();
  TextEditingController hbController = TextEditingController();
  TextEditingController hctController = TextEditingController();
  TextEditingController plateletController = TextEditingController();
  File? _imageFile;

  Future<String?> uploadImage(
      File imageFile, String userId, String imageName) async {
    try {
      final Reference storageReference =
          FirebaseStorage.instance.ref().child('lab_results/$imageName');

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

  void _saveLabResults(BuildContext context) async {
    try {
      // Get the current user's ID
      String userId = FirebaseAuth.instance.currentUser?.uid ?? '';

      // Create a reference to the 'test_results' collection
      CollectionReference testResults =
          FirebaseFirestore.instance.collection('lab_results');

      // Fetch the user's name from the 'users' collection
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      if (userSnapshot.exists) {
        String userName =
            (userSnapshot.data() as Map<String, dynamic>)['name'] ?? '';

        // Upload the image and get the URL
        String? imageUrl;
        if (_imageFile != null) {
          // Use the user's name as the filename
          String imageName = '$userName.png';
          imageUrl = await uploadImage(_imageFile!, userId, imageName);
        }

        // Create a map with the data to be saved, including the user's name and image URL
        Map<String, dynamic> data = {
          'userId': userId,
          'timestamp': FieldValue.serverTimestamp(),
          'name': userName,
          'urea': ureaController.text,
          'creatInUrine': creatInUrineController.text,
          'albuminCreatinin': albuminCreatininController.text,
          'alt': altController.text,
          'ast': astController.text,
          'alp': alpController.text,
          'ggt': ggtController.text,
          'hb': hbController.text,
          'hct': hctController.text,
          'platelet': plateletController.text,
          'imageUrl': imageUrl,
        };

        // Add the data to the 'lab_results' collection
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

        // Check conditions and display warnings
        String warningMessage = '';
        if (int.tryParse(altController.text) != null &&
            int.tryParse(altController.text)! > 55) {
          warningMessage += 'ALT is greater than 55.\n';
        }
        if (int.tryParse(astController.text) != null &&
            int.tryParse(astController.text)! > 50) {
          warningMessage += 'AST is greater than 50.\n';
        }
        if (int.tryParse(alpController.text) != null &&
            int.tryParse(alpController.text)! > 148) {
          warningMessage += 'ALP is greater than 148.\n';
        }
        if (double.tryParse(albuminCreatininController.text) != null &&
            double.tryParse(albuminCreatininController.text)! < 2.0) {
          warningMessage += 'Albumin-Creatinine ratio is less than 2.0.\n';
        }
        if (int.tryParse(ggtController.text) != null &&
            int.tryParse(ggtController.text)! > 300) {
          warningMessage += 'GGT is greater than 300.\n';
        }
        if (int.tryParse(ureaController.text) != null &&
            int.tryParse(ureaController.text)! > 30) {
          warningMessage += 'Urea is greater than 30.\n';
        }
        if (double.tryParse(creatInUrineController.text) != null &&
            double.tryParse(creatInUrineController.text)! > 1.2) {
          warningMessage += 'Creatinine in Urine is greater than 1.2.\n';
        }
        if (int.tryParse(plateletController.text) != null &&
            int.tryParse(plateletController.text)! < 100000) {
          warningMessage += 'Platelet count is less than 100,000.\n';
        }

        // Display warnings if there are any
        if (warningMessage.isNotEmpty) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Warning'),
                content: Text(warningMessage),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfaeaf0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 161, 192),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'نتائج تحاليل المعمل',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'cairo',
            ),
          ),
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 10,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'تحاليل وظائف الكلى',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTextField(
              lablelText: 'Urea',
              textfieldcontroller: ureaController,
            ),
            CustomTextField(
              lablelText: 'Creat',
              textfieldcontroller: creatInUrineController,
            ),
            CustomTextField(
              lablelText: 'Albumin-Creatinine ratio',
              textfieldcontroller: albuminCreatininController,
            ),
            const Text(
              'تحاليل وظائف الكبد',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTextField(
              lablelText: 'ALT',
              textfieldcontroller: altController,
            ),
            CustomTextField(
              lablelText: 'AST',
              textfieldcontroller: astController,
            ),
            CustomTextField(
              lablelText: 'ALP',
              textfieldcontroller: alpController,
            ),
            CustomTextField(
              lablelText: 'GGT',
              textfieldcontroller: ggtController,
            ),
            const Text(
              "صورة الدم الكاملة",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTextField(
              lablelText: 'Hb%',
              textfieldcontroller: hbController,
            ),
            CustomTextField(
              lablelText: 'Hct',
              textfieldcontroller: hctController,
            ),
            CustomTextField(
              lablelText: 'Platelet count',
              textfieldcontroller: plateletController,
            ),
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
              text: 'Pick an Image',
            ),
            CustomButton(
              ontap: () {
                _saveLabResults(context);
              },
              text: 'Save lab Results',
            ),
          ],
        ),
      ),
    );
  }
}
