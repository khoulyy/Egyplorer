import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/view/screens/cart_screen.dart';
import 'package:project/view/screens/home_screen.dart';
import 'package:project/view/screens/places_page.dart';
import 'package:project/view/screens/search_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});
  static String id = 'Layout Screen';

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const PlacesPage(),
    const CartPage(),
  ];

  final List<String> titles = [
    'Home',
    'Activities',
    'Cities',
    'Cart',
  ];
  int currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text(titles[currentIndex])),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: const [
          HomeScreen(),
          SearchScreen(),
          PlacesPage(),
          CartPage(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: BottomNavigationBar(
          elevation: 50,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.searchengin),
              label: 'Activities',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.locationPin),
              label: 'Cities',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cartShopping),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
