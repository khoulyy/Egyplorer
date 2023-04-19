import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';
import 'package:project/screens/start_page3.dart';

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
            const Text('Countless high-end  '),
            const SizedBox(
              height: 3,
            ),
            const Text('entertainment facilities'),
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
                        return const StartPage3Screen();
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
