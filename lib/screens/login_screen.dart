// ignore: file_names
import 'package:flutter/material.dart';
import 'package:project/screens/home_screen.dart';
import 'package:project/screens/signup_screen.dart';

import '../components/button_widget.dart';
import '../components/custom_text_field2.dart';
import '../constants/keys.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static String id = 'LogInScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(kLogInPhoto),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 428,
              height: 514,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey.withOpacity(0.6),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    const Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          '           Email*',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hintColor: Colors.black,
                      hintText: 'enter your email',
                      prefixIcon: const Icon(Icons.email),
                      height: 45,
                      width: 300,
                      borderRadius: 5,
                      hintSize: 15,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      children: [
                        Text(
                          '           password*',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hintColor: Colors.black,
                      hintText: 'enter your password',
                      prefixIcon: const Icon(
                        Icons.password,
                      ),
                      height: 45,
                      width: 300,
                      borderRadius: 5,
                      hintSize: 15,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                      height: 60,
                      width: 158,
                      text: ' LogIn',
                      fontSize: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't Have An Account?  ",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          child: const Text(
                            'SignUp',
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
