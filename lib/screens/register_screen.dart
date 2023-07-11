import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  String _errorMessage = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _registerUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

      if (password != confirmPassword) {
      setState(() {
        _errorMessage = 'Passwords do not match.';
      });
      return;
    }

    try {
      // Create a new user with email and password
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Access the user data from userCredential
      User? user = userCredential.user;
      if (user != null) {
        // User registered successfully
        print(Text('تم التسجيل '));
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );

      } else {
        // Handle the case when user is null
        setState(() {
          _errorMessage = 'فشل التسجيل';
        });
      }
    } catch (e) {
      // Handle any registration errors
      print(Text(e.toString()));
      setState(() {
        _errorMessage = 'فشل التسجيل';
        
      });
    }
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,255,255,255),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16),
                      children: [
                        const Text(
                          'انشاء حساب',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color.fromARGB(255, 235, 112, 136),
                          ),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 235, 112, 136),
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
                                hintText: 'البريد الالكتروني',
                                hintStyle: TextStyle(
                                  color: Colors.grey, // Set hint text color
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 235, 112, 136),
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
                                  color: Colors.grey, // Set hint text color
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 235, 112, 136),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: TextField(
                              controller: _confirmPasswordController,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.lock),
                                border: InputBorder.none,
                                hintText: 'تأكيد كلمة المرور',
                                hintStyle: TextStyle(
                                  color: Colors.grey, // Set hint text color
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        if (_errorMessage.isNotEmpty)
                          Text(
                            _errorMessage,
                            style: TextStyle(color: Colors.red),
                          ),
                        SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: _registerUser,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 235, 112, 136)
                                    .withOpacity(0.90),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: const Center(
                              child: Text(
                                'انشاء حساب',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
