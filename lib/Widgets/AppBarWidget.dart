import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/keys.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      shadowColor: Colors.black,
  title:const Text('Welcome',style: TextStyle(
    color: Colors.black
  ),) ,
  centerTitle: true,
  iconTheme: const IconThemeData(
    color: Colors.black
  ),
 scrolledUnderElevation: 15,
  elevation: 4,
  backgroundColor: kSecoundaryColor,
  actions: [
    IconButton(
      color: Colors.black,
      onPressed: () {}, icon: const Icon(FontAwesomeIcons.cartShopping))
  ],
);
  }
}