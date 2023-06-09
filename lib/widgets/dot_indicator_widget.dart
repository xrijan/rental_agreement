import 'package:flutter/material.dart';


class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    super.key,
    required this.isActive,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2),
      height: 5,
      width: isActive ? 20 : 10,
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
    );
  }
}

