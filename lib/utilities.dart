
import 'package:flutter/material.dart';

import 'constants/size.dart';

class SnackBarUtil {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content:  SizedBox(
            height: 50,
            child: Center(child: Text(message,style:  TextStyle(fontSize: MySize.kHeading3),))),
        duration: const Duration(milliseconds: 1500),
        width: 300.0,
        // Width of the SnackBar.
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0, // Inner padding for SnackBar content.
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
    );
  }
}