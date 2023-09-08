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

  String _errorMessage = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _registerUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (password != confirmPassword) {
      setState(() {
        _errorMessage = 'كلمة السر مش متوافقة';
      });
      return;
    }

    if (password.length < 8) {
      setState(() {
        _errorMessage = 'كلمة السر لازم تكون 8 حروف أو أكتر';
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
        print('تم تسجيل المستخدم بنجاح');
        Get.to(()=>LoginScreen(),
            transition: Transition.fade, duration: Duration(seconds: 1));
      } else {
        setState(() {
          _errorMessage = 'فشل في تسجيل المستخدم';
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        _errorMessage = 'فشل في تسجيل المستخدم';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 236, 161, 192),
        title:const Padding(
          padding: EdgeInsets.all(8.0),
          child:  Text(
            "   انشاء حساب",
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
      backgroundColor:const Color(0xFFfaeaf0),
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
                              decoration: const InputDecoration(
                                icon: Icon(Icons.mail),
                                border: InputBorder.none,
                                hintText: 'البريد الالكتروني',
                                
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
                                hintText: 'كلمة المرور',
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
                                hintText:'تأكيد كلمة المرور',
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
                       const SizedBox(height: 16.0),
                        if (_errorMessage.isNotEmpty)
                          Text(
                            _errorMessage,
                            style:const TextStyle(color: Colors.red),
                          ),
                        const SizedBox(height: 10),
                         CustomButton(
                            ontap: () {
                              _registerUser();
                            },
                            text: 'انشاء حساب'),
                        const SizedBox(height: 10), // Added SizedBox for spacing
                        const Text(
                          'اختاري كلمة سر 8 حروف أو اكتر\nممكن تختاري أرقام\nافتكري الرمز دا كويس',
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
