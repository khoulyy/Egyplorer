import 'package:flutter/material.dart';
import 'package:project/screens/places_page.dart';

import '../components/custom_button.dart';
import '../components/custom_radio_button.dart';
import '../components/custom_text_field.dart';
import '../constants/keys.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});
  final String id = 'InfoPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          const Text(
            'Wonderful!',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              'assets/images/gender.png',
              height: 70,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "You're about to start exploring, so\ntell about yourself",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 30,
            decoration: BoxDecoration(
              color: kSecoundaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "Select your Gender",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const CustomRadioButton(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 30,
            decoration: BoxDecoration(
              color: kSecoundaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "Additional Information",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const CustomTextField(
            labelText: 'Name',
            icon: Icons.person,
          ),
          const CustomTextField(
            labelText: 'D.O.B',
            icon: Icons.calendar_month,
          ),
          const CustomTextField(
            labelText: 'Location',
            icon: Icons.location_pin,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150.0),
            child: CustomButton(
              onClicked: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PlacesPage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
