import 'package:flutter/material.dart';
import 'package:project/Screens/StartPG1Screen.dart';
import 'package:project/Widgets/ButtonWidget.dart';
import 'package:project/constants/keys.dart';

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
              'Welcome to Anubis',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),
            Image.asset('assets/images/Beach_Monochromatic 1.png'),
            const Spacer(flex: 1),
            const Text(
              'The best Excursion App for Uk CITIZENS ',
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
              'why khonsu?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'fint out here',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, StartPage1Screen.id);
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
