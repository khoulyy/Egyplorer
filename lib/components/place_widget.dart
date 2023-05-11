import 'package:flutter/material.dart';

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({
    super.key,
    this.placeName,
    this.url,
  });

  final String? placeName;
  final String? url;

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
            child: Image.network(url!),
          ),
          Text(
            placeName!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            color: Colors.black,
            indent: 70,
            endIndent: 70,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "weather: the weather in $placeName is always warm, or hot, and the nights cool.",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
