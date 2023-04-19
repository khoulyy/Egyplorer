import 'package:flutter/material.dart';

import '../constants/keys.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onClicked,
  });

  final Function()? onClicked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(kMainColor),
        ),
        onPressed: onClicked,
        child: const Text(
          'Next >',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
