import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SucssesfulScreen extends StatelessWidget {
  const SucssesfulScreen({super.key});
  static String id = 'SucssesfulScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/congrats.json',
              repeat: false,
            ),
            const Text('Congratulations!\n Your order is complete!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 32,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
