import 'package:application/screens/diet%20and%20nutrition_screen.dart';
import 'package:application/screens/environment_screen.dart';
import 'package:application/screens/notes%20and%20measurements_screen.dart';
import 'package:application/screens/pharmaceutical_screen.dart';
import 'package:application/screens/psychological%20stressors_screen.dart';
import 'package:application/screens/rest%20and%20exercise_screen.dart';
import 'package:application/screens/smoking%20and%20alcohol_screen.dart';
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
    return Scaffold(
      backgroundColor: Color(0xFFfaeaf0),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFde98bd),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  boxShadow: CupertinoContextMenu.kEndBoxShadow,
                ),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon_Button(
                      icon: const Icon(Icons.logout_rounded),
                      class_name: const LoginScreen(),
                    ),
                    Icon_Button(
                      icon: const Icon(Icons.place_outlined),
                      class_name: const HospitalMapScreen(),
                    ),
                    // Profile Icon Button
                    Icon_Button(
                      icon: Icon(Icons.person_outline), // Customize the icon if needed
                      class_name: const ProfileScreen(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/cover.png'),
             
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(
                      class_name: SymptomsAndComplicationsScreen(),
                      icon: Icon(Icons.warning),
                      label: 'الاعراض الخطيرة',
                    ),
                    button(
                      class_name: Diet(),
                      label: 'الغذاء والتغذية',
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
                      label: 'التدخين والكحوليات',
                    ),
                    button(
                      class_name: Environment(),
                      label: 'البيئة المحيطة',
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
                      label: 'الراحة و ممارسة الرياضة',
                    ),
                    button(
                      class_name: Stress(),
                      label: 'الضغوطات النفسية',
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
                      label: 'الادوية',
                    ),
                    button(
                      class_name: notes(),
                      label: 'الملاحظات و القياسات',
                      icon: Icon(Icons.medical_services_outlined),
                    ),
                  ],
                ),
              ),
              

            ],
            
          ),
        
        ],
      ),
    );
  }
}
