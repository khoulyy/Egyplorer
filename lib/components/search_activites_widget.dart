import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({
    this.activityName,
    this.duration,
    super.key,
    this.url,
    this.activityLocation,
  });

  final String? url;
  final String? activityName;
  final String? duration;
  final String? activityLocation;
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
                        const Text(
                          'Price: Â£250',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Align(
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: const [
                                    Text('Add to cart'),
                                    Icon(
                                      FontAwesomeIcons.cartShopping,
                                    ),
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
