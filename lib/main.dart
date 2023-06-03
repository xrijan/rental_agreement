import 'package:flutter/material.dart';
import 'package:rental_agreement/screens/temp_onBoarding.dart';


void main() {
  runApp(const RentalAgreementApp());
}

class RentalAgreementApp extends StatelessWidget {
  const RentalAgreementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rental Agreement',
      initialRoute: '/',
      routes: {
        '/': (context) =>  const Temp(),
      },
    );
  }
}
