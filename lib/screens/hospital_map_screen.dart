import 'dart:ffi';

import 'package:application/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HospitalMapScreen extends StatelessWidget {
  const HospitalMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
     final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFfaeaf0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 161, 192),
        title: Text(S.of(context).hospitalAppBar,
          style: const  TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontFamily: 'cairo'),
        ),
         shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 10,
      ),
      body: 
       Center(
        child: SizedBox(
          width: screenWidth * 0.5,
          height: screenHeight *0.1,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 236, 161, 192),
              ) ,
             
            ),
            onPressed: () {
              // Launch Google Maps
              launchMaps();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Text(
                S.of(context).hospitalbutton, style:  TextStyle(color: Colors.white, fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold,fontFamily: 'cairo',),
                    ),
            ),
             ),
        ),
           ),
    );
  }

  void launchMaps() async {
    // URL scheme for launching Google Maps
    final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=hospitals';

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
  }
}
