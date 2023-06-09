import 'package:flutter/material.dart';

class OnBoardingModel {
  final int topColor;
  final int bottomColor;
  final String image;
  final String heading;
  final String textOverlay;
  final String description;

  OnBoardingModel(
      {required this.topColor,
      required this.bottomColor,
      required this.image,
      required this.heading,
      required this.textOverlay,
      required this.description});
}
