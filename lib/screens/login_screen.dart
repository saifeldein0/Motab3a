import 'package:application/screens/home_screen.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nationalIdController = TextEditingController(); // Add this controller

  String _errorMessage = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _loginUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String nationalId = _nationalIdController.text; // Retrieve National ID

    try {
      // Sign in the user with email and password
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Access the user data from userCredential
      User? user = userCredential.user;
      if (user != null) {
        // User logged in successfully
        print('تم تسجيل الدخول بنجاح ${user.uid}');
        // Now, you can use the nationalId as needed.
        Get.to(() => HomeScreen(),
            transition: Transition.fade, duration: Duration(seconds: 1));
      } else {
        // Handle the case when user is null
        setState(() {
          _errorMessage = 'فشل الدخول';
        });
      }
    } catch (e) {
      // Handle any login errors
      print(e.toString());
      setState(() {
        _errorMessage = 'فشل الدخول';
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
          child: const Text(
            "   تسجيل دخول ",
            style: TextStyle(
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
      backgroundColor: Color(0xFFfaeaf0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'لديك حساب ؟',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFFde98bd),
                  fontFamily: 'cairo',
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                decoration: const BoxDecoration(
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
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail),
                      border: InputBorder.none,
                      hintText: "البريد الالكتروني",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'cairo', // Set hint text color
                      ),
                    ),
                    cursorColor: const Color(0xFFde98bd),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                decoration: const BoxDecoration(
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
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      border: InputBorder.none,
                      hintText: 'كلمة المرور',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'cairo', // Set hint text color
                      ),
                    ),
                    obscureText: true,
                    cursorColor: const Color(0xFFde98bd),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFde98bd),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    controller: _nationalIdController, // Add this line
                    decoration: const InputDecoration(
                      icon: Icon(Icons.credit_card),
                      border: InputBorder.none,
                      hintText: 'الرقم القومي',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'cairo', // Set hint text color
                      ),
                    ),
                    cursorColor: const Color(0xFFde98bd),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              if (_errorMessage.isNotEmpty)
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              const SizedBox(height: 10),
              CustomButton(
                ontap: () {
                  _loginUser();
                },
                text: 'تسجيل دخول',
              ),
              const SizedBox(height: 10),
              CustomButton(
                ontap: () {
                  _goToRegisterScreen();
                },
                text: 'انشاء حساب',
              )
            ],
          ),
        ),
      ),
    );
  }
}
