import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({
    this.activityName,
    this.duration,
    super.key,
    this.url,
    this.activityLocation,
    this.price,
    this.elevatedButton,
    this.onPressed,
    this.text,
    this.icon,
  });

  final String? url;
  final String? activityName;
  final String? duration;
  final String? activityLocation;
  final ElevatedButton? elevatedButton;
  final String? price;
  final String? text;
  final IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.lightBlue[50],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              activityName!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    url!,
                    width: 130,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 15,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Location: $activityLocation',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        Text(
                          'Duration: $duration',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price: $price EGP',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Align(
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: onPressed,
                                child: Row(
                                  children: [
                                    Text('$text'),
                                    Icon(icon),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
