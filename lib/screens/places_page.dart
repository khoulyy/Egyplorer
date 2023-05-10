import 'package:flutter/material.dart';
import 'package:project/screens/payment_page.dart';

import '../components/custom_button.dart';

class PlacesPage extends StatefulWidget {
  const PlacesPage({super.key});
  static String id = "PlacesPage";

  @override
  State<PlacesPage> createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Expolore all the places',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomButton(
            onClicked: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PaymentPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
