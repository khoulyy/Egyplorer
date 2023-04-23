import 'package:flutter/material.dart';
import 'package:project/components/button_widget.dart';
import 'package:project/constants/keys.dart';
import 'package:project/screens/home_screen.dart';

class SignUpStep3Screen extends StatelessWidget {
  const SignUpStep3Screen({super.key});
  static String id = 'SignUpStep3Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '   Your response',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/images/book-open.png',
          ),
          const Text(
            'What we have recieved from you',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 50,
          ),
          const CircleAvatar(
            radius: 60,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'name',
            style: TextStyle(fontSize: 22),
          ),
          const Text(
            'location info',
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            enabled: false,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Gender',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextField(
            enabled: false,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'D.O.B',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextField(
            enabled: false,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Intersts',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: ButtonWidget(
                  fontSize: 22,
                  width: 141,
                  height: 51,
                  text: 'Edit',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ButtonWidget(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                backgroundColor: kSecoundaryColor,
                fontSize: 22,
                width: 141,
                height: 51,
                text: 'Finish',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
