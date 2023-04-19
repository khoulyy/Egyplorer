import 'package:flutter/material.dart';

import '../components/search_activites_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  final String id = 'PaymentPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActivityWidget(),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Check In',
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        Text(
                          'December 15, 2024',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Check Out',
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        Text(
                          'December 20, 2024',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Guest',
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        Text(
                          '5',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '5 Nights',
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        Text(
                          '\$425.00',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Taxes & Fees (10%)',
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        Text(
                          '\$44.50',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Guest',
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        Text(
                          '5',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
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
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'Change',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: null,
                child: Text(
                  "Confirm Payment",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}