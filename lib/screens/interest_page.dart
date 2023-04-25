import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../components/custom_button.dart';
import '../components/custom_check_box.dart';
import 'info_page.dart';

class InterestPage extends StatelessWidget {
  const InterestPage({super.key});
  static String id = 'InterestPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Your Interests',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const LikeButton(
            size: 50,
            bubblesSize: 500,
            circleColor: CircleColor(
              start: Colors.red,
              end: Colors.red,
            ),
          ),
          const Text(
            "Select things you're interested in &\nwe'll help you choosing the most\n suitable packages!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Expanded(child: CustomCheckBox(text: 'Diving')),
              Expanded(child: CustomCheckBox(text: 'Camping')),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomCheckBox(text: 'Snorkeling')),
              Expanded(child: CustomCheckBox(text: 'Hiking')),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomCheckBox(text: 'Water\nSports')),
              Expanded(child: CustomCheckBox(text: 'Historical\nPlaces')),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomCheckBox(text: 'Religious\nPlaces')),
              Expanded(child: CustomCheckBox(text: 'Mountains')),
            ],
          ),
          CustomButton(
            onClicked: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const InfoPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}

class BubblesColor {}
