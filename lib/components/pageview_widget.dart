import 'package:flutter/material.dart';

import '../controller/controllers.dart';
import '../view/screens/start_page1.dart';
import '../view/screens/start_page2.dart';
import '../view/screens/start_page3.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageVeiwController.pageController,
      children: const [
        StartPage1Screen(),
        StartPage2Screen(),
        StartPage3Screen(),
      ],
    );
  }
}
