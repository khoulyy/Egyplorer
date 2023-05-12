import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';

import '../components/app_bar_widget.dart';
import '../components/button_widget.dart';
import '../components/nav_bar_widget.dart';
import 'credit_card_input_screen.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static String id = 'CartScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarWidget(),
      appBar: const PreferredSize(
        preferredSize: kPreferredSize,
        child: AppBarWidget(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ButtonWidget(
                    onPressed: () {
                      Navigator.pushNamed(context, PaymentScreen.id);
                    },
                    height: 100,
                    width: 100,
                    text: 'proceeds to checkout',
                    backgroundColor: kMainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
