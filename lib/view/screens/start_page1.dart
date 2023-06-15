import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';

class StartPage1Screen extends StatelessWidget {
  const StartPage1Screen({super.key});
  static String id = 'StartPage1Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(kStartPage1photo),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Make your own private ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'excursion plan',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Formulate your strategy to receive ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'wonderful gift packs',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
