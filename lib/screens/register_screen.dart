import 'package:application/generated/l10n.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _nationalIdController = TextEditingController();

  String _errorMessage = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _registerUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;
    String nationalId = _nationalIdController.text;

    // Validate National ID (must be 14 digits)
    if (nationalId.length != 14 || !RegExp(r'^[0-9]*$').hasMatch(nationalId)) {
      setState(() {
        _errorMessage = S.of(context).error_message_invalid_national_id;
      });
      return;
    }

    if (password != confirmPassword) {
      setState(() {
        _errorMessage = S.of(context).error_message_password_mismatch;
      });
      return;
    }

    if (password.length < 8) {
      setState(() {
        _errorMessage = S.of(context).error_message_short_password;
      });
      return;
    }

    setState(() {
      _obscurePassword = !_obscurePassword;
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;
      if (user != null) {
        print(S.of(context).register_success_message);
        Get.to(() => LoginScreen(),
            transition: Transition.fade, duration: Duration(seconds: 1));
      } else {
        setState(() {
          _errorMessage = S.of(context).error_message_registration_failed;
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        _errorMessage = S.of(context).error_message_registration_failed;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 161, 192),
        title:Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            S.of(context).register_app_title,
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
      backgroundColor: const Color(0xFFfaeaf0),
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
                              decoration: InputDecoration(
                                icon: Icon(Icons.mail),
                                border: InputBorder.none,
                                hintText: S.of(context).email_hint,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'cairo',
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
                              obscureText: _obscurePassword,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                border: InputBorder.none,
                                hintText: S.of(context).password_hint,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'cairo',
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                  icon: _obscurePassword
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
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
                              controller: _confirmPasswordController,
                              obscureText: _obscureConfirmPassword,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                border: InputBorder.none,
                                hintText: S.of(context).confirm_password_hint,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'cairo',
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscureConfirmPassword =
                                          !_obscureConfirmPassword;
                                    });
                                  },
                                  icon: _obscureConfirmPassword
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
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
                              cursorColor: const Color(0xFFde98bd),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        if (_errorMessage.isNotEmpty)
                          Text(
                            _errorMessage,
                            style: const TextStyle(color: Colors.red),
                          ),
                        const SizedBox(height: 10),
                        CustomButton(
                          ontap: () {
                            _registerUser();
                          },
                          text: S.of(context).register_button_text,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          S.of(context).password_requirements_message,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontFamily: 'cairo',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
