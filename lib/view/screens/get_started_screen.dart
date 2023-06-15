import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';
import 'package:project/screens/start_pages.dart';

import '../components/button_widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});
  static String id = 'GetStartedPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15A6FE),
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text(
              'Welcome to Egyplorer',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),
            Image.asset('assets/images/logo.png', width: 400),
            const Spacer(flex: 1),
            const Text(
              'The best Excursion App for UK citizens ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Why Egyplorer?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Find out here',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, StartPages.id);
              },
              height: 55,
              width: 269,
              text: 'Get Started',
              fontSize: 22,
              fontColor: Colors.black,
              backgroundColor: kSecoundaryColor,
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
