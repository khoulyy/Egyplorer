import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key,
      this.onPressed,
      this.height,
      this.width,
      this.text,
      this.fontSize,
      this.backgroundColor,
      this.fontColor});
  VoidCallback? onPressed;
  double? height, width;
  String? text;
  double? fontSize;
  Color? backgroundColor;
  Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          child: Text(
            text!,
            style: TextStyle(fontSize: fontSize, color: fontColor),
          ),
        ));
  }
}
