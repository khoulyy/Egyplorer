import 'package:flutter/material.dart';
import 'package:project/screens/search_screen.dart';
import 'package:project/screens/successful_screen.dart';

import '../components/search_activites_widget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});
  static String id = 'PaymentPage';

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Review'),
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  return ActivityWidget(
                    text: 'Remove',
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
              const Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.credit_card,
                      size: 50,
                    ),
                    Text(
                      'XXXX XXXX XXXX 2473',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SucssesfulScreen.id);
                  },
                  child: const Text(
                    "Confirm Payment",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
