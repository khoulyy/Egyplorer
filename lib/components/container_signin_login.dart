import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerSignInAndLogInWidget extends StatelessWidget {
  ContainerSignInAndLogInWidget({super.key, this.height, this.width});
  double? width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.grey.withOpacity(0.6),
          shape: BoxShape.rectangle,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
        ));
  }
}

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.height,
    required this.width,
    required this.firstText,
    required this.secoundText,
    required this.url,
  });
  double? height, width;
  String? url;
  String? firstText;
  String? secoundText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                url!,
              ),
              fit: BoxFit.cover),
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                firstText!,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                secoundText!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
