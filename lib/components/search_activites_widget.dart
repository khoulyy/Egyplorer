import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.lightBlue[50],
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://images.unsplash.com/photo-1541769740-098e80269166?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
              width: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 15,
            ),
            child: Column(
              children: [
                const Text(
                  'Historical Tour',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Text(
                      'Location:Giza',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'Â£250',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Duration:6hours                   ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Description:                            ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
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
          )
        ],
      ),
    );
  }
}
