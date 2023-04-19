import 'package:flutter/material.dart';
import 'package:project/Screens/PaymentScreen.dart';
import 'package:project/Widgets/AppBarWidget.dart';
import 'package:project/Widgets/NavBarWidget.dart';
import 'package:project/Widgets/SearchActivitiesWidget.dart';
import 'package:project/constants/keys.dart';

import '../Widgets/ButtonWidget.dart';

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
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
                const ActivityWidget(),
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
