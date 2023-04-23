import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';

class SucssesfulScreen extends StatelessWidget {
  const SucssesfulScreen({super.key});
  static String id = 'SucssesfulScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [Text('congrats ')],
        ),
      ),
    );
  }
}
