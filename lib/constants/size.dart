import 'package:flutter/cupertino.dart';

class MySize {
  ///responsive height and width
  static double kScreenHeight = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;
  static double kScreenWidth = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

  static double kTextFieldHeight = kScreenHeight * 0.06;
  static double kSizeBoxHeight10 = MySize.kScreenHeight * 0.010;
  static double kSizeBoxHeight20 = MySize.kScreenHeight * 0.020;

  ///fonts size
  static double kHeading1 = 24;
  static double kHeading2 = 14;
  static double kHeading3 = 10;
  ///test
}