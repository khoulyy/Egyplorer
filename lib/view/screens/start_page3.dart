import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';
import 'package:project/view/screens/signup_login_screen.dart';

class StartPage3Screen extends StatelessWidget {
  const StartPage3Screen({super.key});
  static String id = 'StartPage3Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(kStartPage3photo),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'High-end leisure activities  ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'to choose from',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "The world's first-class modern leisure ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'and entertainment method',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUpLogInScreen();
                      }));
                    },
                    icon: const Icon(
                      Icons.navigate_next_rounded,
                      color: Colors.white,
                    ))),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
