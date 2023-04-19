import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../screens/cart_screen.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: GNav(
          duration: const Duration(milliseconds: 250),
          tabBorderRadius: 15,
          iconSize: 30,
          backgroundColor: Colors.white,
          gap: 10,
          tabMargin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          tabs: [
            GButton(
              onPressed: () {},
              text: 'Home',
              icon: Icons.home,
              backgroundColor: const Color(0xffE9D4EF),
              iconActiveColor: const Color(0xff814F8D),
              iconColor: const Color(0xff4AA9BC),
            ),
            GButton(
              onPressed: () {},
              text: 'Explore',
              icon: Icons.travel_explore,
              backgroundColor: Colors.orange[100],
              iconActiveColor: Colors.orange,
              iconColor: const Color(0xff4AA9BC),
            ),
            GButton(
              onPressed: () {
                Navigator.pushNamed(context, CartPage.id);
              },
              text: 'Cart',
              icon: Icons.shopping_cart,
              backgroundColor: Colors.lightGreen[100],
              iconActiveColor: Colors.green,
              iconColor: const Color(0xff4AA9BC),
            ),
            GButton(
              onPressed: () {},
              text: 'Account',
              icon: Icons.account_circle,
              backgroundColor: const Color(0xffD4E9EB),
              iconActiveColor: const Color(0xff429086),
              iconColor: const Color(0xff4AA9BC),
            ),
          ],
        ),
      ),
    );
  }
}
