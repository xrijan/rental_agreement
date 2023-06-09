import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  final String image;
  final String textOverlay;
  final String heading;
  final String description;

  const OnBoardingWidget({
    required this.image,
    required this.textOverlay,
    super.key,
    required this.heading,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Center(
            child: Image.asset(
              image,
              height: 300,
            ),
          ),
          Spacer(),
          Text(
            heading,
            style: TextStyle(fontSize: 44, fontWeight: FontWeight.w400),
          ),
          Text(description),
          Spacer()
        ],
      ),
    );
  }
}