import 'package:flutter/material.dart';

import 'credit_card_input_screen.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static String id = 'CartScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, PaymentScreen.id);
                },
                child: const Text(
                  'Proceeds to checkout',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
