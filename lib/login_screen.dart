import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _errorMessage = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _loginUser() async {
    String phoneNumber = _phoneNumberController.text;
    String password = _passwordController.text;

    try {
      // Sign in the user with phone number and password
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: '', // Firebase requires an email, so you can use an empty string
        password: password,
      );

      // Validate the user's phone number if necessary
      if (userCredential.user?.phoneNumber != phoneNumber) {
        setState(() {
          _errorMessage = 'Invalid phone number.';
        });
        return;
      }

      // Login successful, proceed to next screen or perform necessary actions
    } catch (e) {
      // Handle any login errors
      print(e.toString());
      setState(() {
        _errorMessage = 'Login failed.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            if (_errorMessage.isNotEmpty)
              Text(
                _errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _loginUser,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
