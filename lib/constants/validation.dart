
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:rental_agreement/utilities.dart';

class Validator {

  bool validateEmail(String email) {
    Pattern pattern =
        r'^([a-zA-Z0-9_\-\.]+)@[a-zA-Z0-9_\-\.]+\.[a-zA-Z]{2,5}$';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(email);
  }

  bool validatePhoneNumber(String phoneNumber) {
    Pattern pattern =
        r'^\+(?:[0-9]●?){6,14}[0-9]$';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(phoneNumber);
  }


  ///user type validator
  bool userTypeValidation(userTypeValue, BuildContext context) {
    if(userTypeValue == 'Owner' || userTypeValue == 'Tenant' || userTypeValue == 'Agent'){
       return true;
    } else {
      return false;
    }
  }

}
