import 'package:application/generated/l10n.dart';
import 'package:application/screens/diet%20and%20nutrition_screen.dart';
import 'package:application/screens/environment_screen.dart';
import 'package:application/screens/MedicalMeasurementsSubmissionScreen.dart';
import 'package:application/screens/pharmaceutical_screen.dart';
import 'package:application/screens/psychological%20stressors_screen.dart';
import 'package:application/screens/rest%20and%20exercise_screen.dart';
import 'package:application/screens/smoking%20and%20alcohol_screen.dart';
import 'package:application/screens/test&measurements.dart';
import 'package:application/widgets/bottom_bar_iconbuttons.dart';
import 'package:application/widgets/home_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:application/screens/profile_screen.dart';
import 'hospital_map_screen.dart';
import 'symptoms_and_complications_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFfaeaf0),
      body: Padding(
        padding:  EdgeInsets.all(screenWidth * 0.01),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.05), // Adjust padding based on screen width
                child: Container(
                  width: screenWidth * 0.8,
               
                  decoration: BoxDecoration(
                    color: const Color(0xFFde98bd),
                    borderRadius: BorderRadius.circular(screenWidth * 0.1), // Adjust border radius
                    boxShadow: const [BoxShadow(blurRadius: 8,spreadRadius: 5,color: Color.fromARGB(255, 182, 181, 181))],
                  ),
                  height: screenHeight * 0.08, // Adjust container height
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon_Button(
                        icon: const Icon(Icons.logout_rounded),
                        class_name: LoginScreen(),
                      ),
                      Icon_Button(
                        icon: const Icon(Icons.place_outlined),
                        class_name: const HospitalMapScreen(),
                      ),
                      Icon_Button(
                        icon: const Icon(Icons.person_outline),
                        class_name: const ProfileScreen(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
      
        
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                    height: 30,
                  ),
                    Image.asset('images/cover.png'),
                    
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button(
                            class_name: SymptomsAndComplicationsScreen(),
                            icon: Icon(Icons.warning),
                            label: S.of(context).symptoms_and_complications_label,
                          ),
                          button(
                            class_name: Diet(),
                            label: S.of(context).diet_label,
                            icon: Icon(Icons.food_bank_rounded),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button(
                            class_name: Smoking(),
                            icon: Icon(Icons.smoke_free_rounded),
                            label: S.of(context).smoking_label,
                          ),
                          button(
                            class_name: Environment(),
                            label: S.of(context).environment_label,
                            icon: Icon(Icons.home),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button(
                            class_name: RestExcersice(),
                            icon: Icon(Icons.pregnant_woman),
                            label: S.of(context).rest_and_exercise_label,
                          ),
                          button(
                            class_name: Stress(),
                            label: S.of(context).stress_label,
                            icon: Icon(Icons.do_not_disturb_alt_rounded),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          button(
                            class_name: pharmaticuals(),
                            icon: Icon(Icons.local_pharmacy_rounded),
                            label: S.of(context).pharmaceuticals_label,
                          ),
                          button(
                            class_name: TestAndMeasurements(),
                            label: S.of(context).test_input_label,
                            icon: Icon(Icons.medical_services_outlined),
                          ),
                        ],
                      ),
                    ),
                  ],
                    
                ),
            ),
        
          ],
        
            ),
      ),
    
    
    
      
    );
  }
}
