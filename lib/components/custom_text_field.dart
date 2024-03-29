import 'package:flutter/material.dart';

import '../constants/keys.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.icon,
    required this.labelText,
    this.onSubmitted,
    this.controller,
  });
  final String? labelText;
  final IconData? icon;
  final Function(String)? onSubmitted;
  final TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: TextField(
        controller: widget.controller,
        onSubmitted: widget.onSubmitted,
        onTap: () {
          setState(() {
            iconColor = kBlueColor;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              widget.icon,
              size: 30,
              color: iconColor,
            ),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
