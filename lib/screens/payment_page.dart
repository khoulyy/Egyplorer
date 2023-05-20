import 'package:flutter/material.dart';
import 'package:project/screens/successful_screen.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  static String id = 'PaymentPage';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
    );
  }
}
