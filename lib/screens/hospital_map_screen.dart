import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HospitalMapScreen extends StatelessWidget {
  const HospitalMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Map'),
      ),
      body: Center(
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
            padding: const EdgeInsets.all(20.0),
            child: const Text('أقرب مستشفى', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,fontFamily: 'cairo',),
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
