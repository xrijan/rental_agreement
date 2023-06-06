import 'package:flutter/material.dart';
import 'package:rental_agreement/screens/login/login_screen.dart';
import 'package:rental_agreement/screens/login/verification_screen.dart';
import 'package:rental_agreement/screens/main_page.dart';


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
      initialRoute: '/loginScreen',
      routes: {
        '/': (context) =>  const Verification(),
        '/loginScreen' : (context) => const LogInScreen(),
        '/main' : (context) => const MainPage(),
      },
    );
  }
}
