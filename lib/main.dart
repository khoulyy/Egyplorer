import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/firebase_options.dart';
import 'package:project/screens/cart_screen.dart';
import 'package:project/screens/credit_card_input_screen.dart';
import 'package:project/screens/get_started_screen.dart';
import 'package:project/screens/home_screen.dart';
import 'package:project/screens/info_page.dart';
import 'package:project/screens/interest_page.dart';
import 'package:project/screens/layout_screen.dart';
import 'package:project/screens/login_screen.dart';
import 'package:project/screens/payment_page.dart';
import 'package:project/screens/places_page.dart';
import 'package:project/screens/search_screen.dart';
import 'package:project/screens/signup_login_screen.dart';
import 'package:project/screens/signup_screen.dart';
import 'package:project/screens/signup_step3_screen.dart';
import 'package:project/screens/start_page1.dart';
import 'package:project/screens/start_page2.dart';
import 'package:project/screens/start_page3.dart';
import 'package:project/screens/start_pages.dart';
import 'package:project/screens/successful_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ExcursionApp());
}

class ExcursionApp extends StatelessWidget {
  const ExcursionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff3AABC1), useMaterial3: true),
      home: const GetStartedScreen(),
      initialRoute: GetStartedScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        GetStartedScreen.id: (context) => const GetStartedScreen(),
        StartPages.id: (context) => const StartPages(),
        StartPage1Screen.id: (context) => const StartPage1Screen(),
        StartPage2Screen.id: (context) => const StartPage2Screen(),
        StartPage3Screen.id: (context) => const StartPage3Screen(),
        SignUpLogInScreen.id: (context) => const SignUpLogInScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        InterestPage.id: (context) => const InterestPage(),
        InfoPage.id: (context) => const InfoPage(),
        SignUpStep3Screen.id: (context) => const SignUpStep3Screen(),
        LogInScreen.id: (context) => const LogInScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        SearchScreen.id: (context) => const SearchScreen(),
        CartPage.id: (context) => const CartPage(),
        PlacesPage.id: (context) => const PlacesPage(),
        PaymentScreen.id: (context) => const PaymentScreen(),
        PaymentPage.id: (context) => const PaymentPage(),
        SucssesfulScreen.id: (context) => const SucssesfulScreen(),
        LayoutScreen.id: (context) => const LayoutScreen(),
      },
    );
  }
}
