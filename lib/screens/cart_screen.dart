import 'package:flutter/material.dart';
import 'package:project/screens/search_screen.dart';

import '../components/search_activites_widget.dart';

// Cart cart = Cart();

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  static String id = 'CartScreen';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return ActivityWidget(
                  text: 'Remove',
                  icon: Icons.remove_circle,
                  onPressed: () {
                    setState(() {
                      cart.removeAt(cart.indexOf(cart[index]));
                    });
                  },
                  url: cart[index]['url'],
                  activityName: cart[index]['activityName'],
                  activityLocation: cart[index]['activityLocation'],
                  duration: cart[index]['duration'],
                  price: cart[index]['price'],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
