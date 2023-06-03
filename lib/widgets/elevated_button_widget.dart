import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final VoidCallback onPressed;

  const ElevatedButtonWidget({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(onPressed: onPressed, child: Text(title)),
    );
  }
}