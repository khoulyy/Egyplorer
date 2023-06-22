import 'package:flutter/material.dart';
import 'package:project/components/button_widget.dart';
import 'package:project/constants/keys.dart';
import 'package:project/view/screens/search_screen.dart';
import 'package:project/view/screens/successful_screen.dart';

import '../../components/search_activites_widget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});
  static String id = 'PaymentPage';

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

var paymentReview = [];

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Review'),
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return ActivityWidget(
                  text: 'remove',
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
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 10),
                child: ButtonWidget(
                  height: 50,
                  width: 345,
                  text: 'confirm payment ',
                  backgroundColor: kWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontColor: kGreenColor,
                  onPressed: () {
                    Navigator.pushNamed(context, SucssesfulScreen.id);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
