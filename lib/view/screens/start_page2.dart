import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';

class StartPage2Screen extends StatelessWidget {
  const StartPage2Screen({super.key});
  static String id = 'StartPage2Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(kStartPage2photo),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Customize your  ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'High-end Excursion',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Countless high-end  ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'entertainment facilities',
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
