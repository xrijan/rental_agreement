import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_agreement/provider/details_page_provider.dart';
import 'package:rental_agreement/provider/property_page_provider.dart';
import 'package:rental_agreement/provider/tenent_details_page_provider.dart';
import 'package:rental_agreement/provider/utilities_page_provideer.dart';
import 'package:rental_agreement/screens/login/login_screen.dart';
import 'package:rental_agreement/screens/login/onboarding_screen.dart';
import 'package:rental_agreement/screens/main_page.dart';

import 'constants/colors.dart';

void main() {
  runApp(const RentalAgreementApp());
}

class RentalAgreementApp extends StatelessWidget {
  const RentalAgreementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OwnerDetailsProvider()),
        ChangeNotifierProvider(create: (_) => TenantDetailsProvider()),
        ChangeNotifierProvider(create: (_) => PropertyDetailsProvider()),
        ChangeNotifierProvider(create: (_) => UtilitiesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rental Agreement',
        initialRoute: '/',
        routes: {
          '/loginScreen': (context) => const LogInScreen(),
          '/': (context) => OnBoardingScreen(),
        },
      ),
    );
  }
}
