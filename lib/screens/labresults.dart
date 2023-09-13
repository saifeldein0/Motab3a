import 'package:application/generated/l10n.dart';
import 'package:application/helper.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/custom_textfields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

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
              title: Text(S.of(context).results_saved_title),
              content: Text(S.of(context).results_saved_message),
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
          warningMessage += S.of(context).alt_warning_message + '\n';
        }
        if (int.tryParse(astController.text) != null &&
            int.tryParse(astController.text)! > 50) {
          warningMessage += S.of(context).ast_warning_message + '\n';
        }
        if (int.tryParse(alpController.text) != null &&
            int.tryParse(alpController.text)! > 148) {
          warningMessage += S.of(context).alp_warning_message + '\n';
        }
        if (double.tryParse(albuminCreatininController.text) != null &&
            double.tryParse(albuminCreatininController.text)! < 2.0) {
          warningMessage +=
              S.of(context).albumin_creatinine_warning_message + '\n';
        }
        if (int.tryParse(ggtController.text) != null &&
            int.tryParse(ggtController.text)! > 300) {
          warningMessage += S.of(context).ggt_warning_message + '\n';
        }
        if (int.tryParse(ureaController.text) != null &&
            int.tryParse(ureaController.text)! > 30) {
          warningMessage += S.of(context).urea_warning_message + '\n';
        }
        if (double.tryParse(creatInUrineController.text) != null &&
            double.tryParse(creatInUrineController.text)! > 1.2) {
          warningMessage +=
              S.of(context).creatinine_urine_warning_message + '\n';
        }
        if (int.tryParse(plateletController.text) != null &&
            int.tryParse(plateletController.text)! < 100000) {
          warningMessage += S.of(context).platelet_count_warning_message + '\n';
        }

        // Display warnings if there are any
        if (warningMessage.isNotEmpty) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(S.of(context).warning_title,  textDirection: Helper().isArabic()
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
                content: Text(warningMessage,
                  textDirection: Helper().isArabic()
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
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
            title: Text(S.of(context).error_title),
            content: Text(S.of(context).error_message),
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
        title:  Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            S.of(context).app_title,
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
            Text(
              S.of(context).urea_label,
              textAlign: TextAlign.start,
               textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTextField(
              lablelText: S.of(context).urea_label,
              textfieldcontroller: ureaController,
            ),
            CustomTextField(
              lablelText: S.of(context).creat_label,
              textfieldcontroller: creatInUrineController,
            ),
            CustomTextField(
              lablelText: S.of(context).albumin_creatinine_ratio_label,
              textfieldcontroller: albuminCreatininController,
            ),
            Text(
              S.of(context).liver_function_tests_title,
              textAlign: TextAlign.start,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                
              ),
            ),
            CustomTextField(
              lablelText: S.of(context).alt_label,
              textfieldcontroller: altController,
            ),
            CustomTextField(
              lablelText: S.of(context).ast_label,
              textfieldcontroller: astController,
            ),
            CustomTextField(
              lablelText: S.of(context).alp_label,
              textfieldcontroller: alpController,
            ),
            CustomTextField(
              lablelText: S.of(context).ggt_label,
              textfieldcontroller: ggtController,
            ),
            Text(
              S.of(context).complete_blood_picture_title,
              textAlign: TextAlign.start,
               textDirection:
                  Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTextField(
              lablelText: S.of(context).hb_percentage_label,
              textfieldcontroller: hbController,
            ),
            CustomTextField(
              lablelText: S.of(context).hct_label,
              textfieldcontroller: hctController,
            ),
            CustomTextField(
              lablelText: S.of(context).platelet_count_label,
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
              text: S.of(context).pick_image_button,
            ),
            CustomButton(
              ontap: () {
                _saveLabResults(context);
              },
              text: S.of(context).save_lab_results_button,
            ),
          ],
        ),
      ),
    );
  }
}
