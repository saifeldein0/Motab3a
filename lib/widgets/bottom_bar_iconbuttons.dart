import 'package:flutter/material.dart';

class Icon_Button extends StatelessWidget {
  Icon_Button({this.class_name , this.icon});
  Widget? class_name;
  Icon? icon;
  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: icon!,
      color: const Color.fromARGB(255, 255, 255, 255),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => class_name!),
        );
      },
    );
  }
}
