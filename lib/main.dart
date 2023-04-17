import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/Screens/CartScreen.dart';
import 'package:project/Screens/GetStartedScreen.dart';
import 'package:project/Screens/HomeScreen.dart';
import 'package:project/Screens/LogInScreen.dart';
import 'package:project/Screens/PaymentScreen.dart';
import 'package:project/Screens/SearchScreen.dart';
import 'package:project/Screens/SignUpLogInScreen.dart';
import 'package:project/Screens/SignUpScreen.dart';
import 'package:project/Screens/SignUpStep3Screen.dart';
import 'package:project/Screens/StartPG1Screen.dart';
import 'package:project/Screens/StartPG2Screen.dart';
import 'package:project/Screens/StartPG3Screen.dart';
import 'package:project/Screens/SuccsefulScreen.dart';
import 'package:project/firebase_options.dart';

void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const ExucrsionApp());
}
class ExucrsionApp extends StatelessWidget {
  const ExucrsionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff3AABC1),
        useMaterial3: true
      ),
     
      home: const GetStartedScreen() ,
      initialRoute: GetStartedScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        GetStartedScreen.id :(context) => const GetStartedScreen(),
        StartPage1Screen.id:(context) => const StartPage1Screen(),
        StartPage2Screen.id :(context) => const StartPage2Screen(), 
        StartPage3Screen.id:(context) => const StartPage3Screen(),
        SignUpLogInScreen.id:(context) => const SignUpLogInScreen(),
        SignUpScreen.id :(context) =>  SignUpScreen(),
        SignUpStep3Screen.id:(context) =>  const SignUpStep3Screen(),
        LogInScreen.id:(context) => const LogInScreen(),
        HomeScreen.id:(context) =>  const HomeScreen(),
        SearchScreen.id:(context) => const SearchScreen(),
        CartPage.id:(context) => const CartPage(),
        PaymentScreen.id:(context) => const PaymentScreen(),
        SucssesfulScreen.id:(context) => const SucssesfulScreen()

        
      },
      
      
      
      );
   
    
  }
}