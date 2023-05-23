import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';
import 'package:project/screens/payment_page.dart';

import '../components/button_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);
  static String id = 'PaymentScreen';
  @override
  // ignore: library_private_types_in_public_api
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final formKey = GlobalKey<FormState>();
  final cardNumberController = TextEditingController();
  final expiryMonthController = TextEditingController();
  final expiryYearController = TextEditingController();
  final cvvController = TextEditingController();
  final cardHolderNameController = TextEditingController();
  String? cardNumber;
  String? expMonth;
  String? expYear;
  String? cvv;
  String? cardHolderName;

  @override
  void dispose() {
    cardNumberController.dispose();
    expiryMonthController.dispose();
    expiryYearController.dispose();
    cvvController.dispose();
    cardHolderNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Payment Details',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: 'x',
                  controller: cardNumberController,
                  onChanged: (data) {
                    cardNumber = data;
                  },
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please enter your card number';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.credit_card),
                    labelText: 'Card Number',
                    hintText: 'Enter your card number',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onChanged: (value) {
                          expMonth = value;
                        },
                        controller: expiryMonthController,
                        decoration: const InputDecoration(
                          labelText: 'Expiration Month',
                          hintText: 'MM',
                          border: OutlineInputBorder(),
                        ),
                        validator: (data) {
                          if (data!.isEmpty) {
                            return 'Please enter the expiration month';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: TextFormField(
                        controller: expiryYearController,
                        decoration: const InputDecoration(
                          labelText: 'Expiration Year',
                          hintText: 'YY',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the expiration year';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: TextFormField(
                        controller: cvvController,
                        decoration: const InputDecoration(
                          labelText: 'CVV/CVC',
                          hintText: 'Enter CVV/CVC',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter CVV/CVC';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: cardHolderNameController,
                  decoration: const InputDecoration(
                    labelText: 'Card Holder Name',
                    hintText: 'Enter card holder name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter card holder name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                ButtonWidget(
                  onPressed: () {
                    Navigator.pushNamed(context, PaymentPage.id);
                  },
                  text: 'dd',
                  backgroundColor: kMainColor,
                  height: 50,
                  width: 345,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
