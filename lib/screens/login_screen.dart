import 'package:application/generated/l10n.dart';
import 'package:application/main.dart';
import 'package:application/screens/home_screen.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'register_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Add this import for Firestore

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nationalIdController = TextEditingController();

  String _errorMessage = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance; // Firestore instance

  void _loginUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String nationalId = _nationalIdController.text;

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;
      if (user != null) {
        // Retrieve the user's stored national ID from Firestore based on their UID.
        DocumentSnapshot snapshot =
            await _firestore.collection('users').doc(user.uid).get();

        if (snapshot.exists) {
          String storedNationalId = snapshot['national_id'];

          // Compare the entered national ID with the stored national ID.
          if (nationalId == storedNationalId) {
            print('تم تسجيل الدخول بنجاح ${user.uid}');
            Get.to(() => HomeScreen(),
                transition: Transition.fade, duration: Duration(seconds: 1));
          } else {
            setState(() {
              _errorMessage = S.of(context).login_error_message;
            });
          }
        } else {
          setState(() {
            _errorMessage = S.of(context).login_error_message;
          });
        }
      } else {
        setState(() {
          _errorMessage = S.of(context).login_error_message;
        });
      }
    } catch (e) {
      print(e.toString());
      setState(() {
        _errorMessage = S.of(context).login_error_message;
      });
    }
  }

  void _goToRegisterScreen() {
    Get.to(RegisterScreen(),
        transition: Transition.downToUp, duration: Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 161, 192),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            S.of(context).login_app_title,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'cairo',
            ),
          ),
        ),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 10,
        toolbarHeight: 70,
      ),
      backgroundColor: Color(0xFFfaeaf0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16),
            children: [
              Text(
                S.of(context).have_account_question,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFFde98bd),
                  fontFamily: 'cairo',
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFde98bd),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail),
                      border: InputBorder.none,
                      hintText: S.of(context).email_hint,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'cairo',
                      ),
                    ),
                    cursorColor: Color(0xFFde98bd),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFde98bd),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      border: InputBorder.none,
                      hintText: S.of(context).password_hint,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'cairo',
                      ),
                    ),
                    obscureText: true,
                    cursorColor: Color(0xFFde98bd),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFde98bd),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    controller: _nationalIdController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.credit_card),
                      border: InputBorder.none,
                      hintText: S.of(context).national_id_hint,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'cairo',
                      ),
                    ),
                    cursorColor: Color(0xFFde98bd),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              if (_errorMessage.isNotEmpty)
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              SizedBox(height: 10),
              CustomButton(
                ontap: () {
                  _loginUser();
                },
                text: S.of(context).login_button_text,
              ),
              SizedBox(height: 10),
              CustomButton(
                ontap: () {
                  _goToRegisterScreen();
                },
                text: S.of(context).register_app_title,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      ontap: () {
                        MyApp.setLocale(context, const Locale('ar'));
                      },
                      text: "العربية"),
                  const SizedBox(
                    width: 35,
                  ),
                  CustomButton(
                      ontap: () {
                        MyApp.setLocale(context, const Locale('en'));
                      },
                      text: 'English')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
