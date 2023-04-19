import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int? val;

  Color? femaleColor;
  Color? maleColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: maleColor,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: const EdgeInsets.symmetric(horizontal: 125, vertical: 10),
          child: RadioListTile(
            title: const Text('Male'),
            value: 1,
            groupValue: val,
            onChanged: (newValue) {
              setState(() {
                val = newValue;
                maleColor = Colors.blue[100];
                femaleColor = null;
              });
            },
          ),
        ),
        Card(
          color: femaleColor,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: const EdgeInsets.symmetric(horizontal: 125, vertical: 10),
          child: RadioListTile(
            activeColor: Colors.pink,
            title: const Text('Female'),
            value: 2,
            groupValue: val,
            onChanged: (newValue) {
              setState(() {
                val = newValue;
                femaleColor = Colors.pink[100];
                maleColor = null;
              });
            },
          ),
        ),
      ],
    );
  }
}
