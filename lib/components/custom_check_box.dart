import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({super.key, this.fontSize, required this.text});
  final String? text;
  double? fontSize = 15;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: CheckboxListTile(
        title: Text(
          widget.text!,
          style: TextStyle(
            fontSize: widget.fontSize,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        value: _isChecked,
        onChanged: (bool? value) => setState(() => _isChecked = value),
      ),
    );
  }
}
