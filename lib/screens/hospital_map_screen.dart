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
          onPressed: () {
            // Launch Google Maps
            launchMaps();
          },
          child: const Text('أقرب مستشفى'),
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
