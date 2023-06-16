import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';

import '../../components/button_widget.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class SignUpLogInScreen extends StatelessWidget {
  const SignUpLogInScreen({super.key});
  static String id = 'SignUpLogInScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(kLogInSignUpPhoto), fit: BoxFit.cover),
            ),
          ),
          Container(
            width: 428,
            height: 340,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey.withOpacity(0.6),
                shape: BoxShape.rectangle),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  const Text(
                    'sign up for an stonking experience',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ButtonWidget(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.id);
                    },
                    height: 40,
                    width: 158,
                    text: 'Sign up',
                    fontSize: 20,
                    backgroundColor: kWhiteColor,
                    fontColor: kGreenColor,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Already have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonWidget(
                    onPressed: () {
                      Navigator.pushNamed(context, LogInScreen.id);
                    },
                    height: 40,
                    width: 158,
                    text: 'Log in',
                    fontSize: 20,
                    backgroundColor: kGreenColor,
                    fontColor: kWhiteColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
