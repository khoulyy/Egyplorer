import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintColor,
    required this.hintText,
    this.enabled,
    this.prefixIcon,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.hintSize,
    this.validator,
    this.controller,
    this.onChanged,
    this.suffixIcon,
    this.obscure = false,
  });

  Function(String)? onChanged;
  String? Function(String?)? validator;

  TextEditingController? controller;
  double? height, width;
  String? hintText;
  bool? enabled;
  Widget? prefixIcon;
  Widget? suffixIcon;
  double? borderRadius;
  double? hintSize;
  Color? hintColor;
  bool obscure;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: width,
      child: TextFormField(
        obscureText: obscure,
        validator: validator,
        onChanged: onChanged,
        enabled: enabled,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor, fontSize: hintSize),
            border: const OutlineInputBorder()),
      ),
    );
  }
}
