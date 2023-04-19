import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
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
      this.suffixIcon});

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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
          color: Colors.white),
      child: TextFormField(
        validator: validator,
        onChanged: onChanged,
        enabled: enabled,
        decoration: InputDecoration(
            fillColor: Colors.white,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor, fontSize: hintSize),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
