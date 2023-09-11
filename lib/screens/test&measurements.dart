import 'package:application/generated/l10n.dart';
import 'package:application/screens/MedicalMeasurementsSubmissionScreen.dart';
import 'package:application/screens/labresults.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/home_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class TestAndMeasurements extends StatelessWidget {
  const TestAndMeasurements({super.key});

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
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
          elevation: 10,
          toolbarHeight: 70,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              CustomButton(
                ontap: () {
                  Get.to(() => TestInputScreen(),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(milliseconds: 300));
                },
                text: 'نتائج القياسات',
              ),
              CustomButton(
                ontap: () {
                  Get.to(() => LabResult(),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(milliseconds: 300));
                },
                text: 'نتائج تحاليل المعمل',
              ),
           
            ],
          ),
        ));
  }
}
