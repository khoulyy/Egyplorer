import 'package:flutter/material.dart';

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images/pyramids.png'),
          ),
          const Text(
            'Cairo',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Cairo is the capital of Egypt and, one of the largest cities in both Africa and the Middle East. It is also the 19th largest city in the world, and among the world's most densely populated cities.",
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          const Divider(
            color: Colors.black,
            indent: 70,
            endIndent: 70,
          ),
          const Text(
            "Activities: Religious Tour, Historical places, Pyramids, Egyptian museum, camel/horse riding.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "weather: the weather in Cairo is always warm, or hot, and the nights cool.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
