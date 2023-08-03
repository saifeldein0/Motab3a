import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        Get.to(class_name!, transition: Transition.downToUp,duration:Duration(milliseconds: 300) );
      },
    );
  }
}
