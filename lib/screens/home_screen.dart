import 'package:application/screens/diet%20and%20nutrition_screen.dart';
import 'package:application/screens/environment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'hospital_map_screen.dart';
import 'symptoms_and_complications_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 236, 161, 192),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.logout_rounded),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HospitalMapScreen()),
                  );
                },
                icon: const Icon(Icons.local_hospital),
                label: const Text('أقرب مستشفى'),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SymptomsAndComplicationsScreen()),
                  );
                },
                icon: const Icon(Icons.warning_rounded),
                label: const Text('الأعراض الخطيرة'),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Diet()),
                  );
                },
                icon: const Icon(Icons.warning_rounded),
                label: const Text("الغذاء والتغذية"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Environment()),
                  );
                },
                icon: const Icon(Icons.warning_rounded),
                label: const Text(" البيئة المحيطة "),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
