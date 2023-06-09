import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/right_to_left_screen.dart';
import '../../../constants/size.dart';
import '../create_page.dart';
import '../../main_page.dart';
import '../pricing_page.dart';
import '../upload_page.dart';

class RentalAgreement extends StatefulWidget {
  const RentalAgreement({Key? key}) : super(key: key);

  @override
  State<RentalAgreement> createState() => _RentalAgreementState();
}

class _RentalAgreementState extends State<RentalAgreement> {
  List<Map<String, dynamic>> agreementItem = [
    {'title': 'Create', 'icon': const Icon(Icons.create, color: Colors.white)},
    {
      'title': 'Renew',
      'icon': const Icon(Icons.autorenew, color: Colors.white)
    },
    {
      'title': 'Upload',
      'icon': const Icon(Icons.upload_file_rounded, color: Colors.white)
    },
    {
      'title': 'Pricing',
      'icon': const Icon(Icons.price_change, color: Colors.white)
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  RightToLeftRoute(
                    page: const CreatePage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: MyColors.kRentalAgreementIconBackgroundColor,
                    ),
                    child: agreementItem[0]['icon'],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(agreementItem[0]['title']),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  DashboardNavigator(1);
                });
              },
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height:60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: MyColors.kRentalAgreementIconBackgroundColor,
                    ),
                    child: agreementItem[1]['icon'],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(agreementItem[1]['title']),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  RightToLeftRoute(
                    page: const UploadPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: MyColors.kRentalAgreementIconBackgroundColor,
                    ),
                    child: agreementItem[2]['icon'],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(agreementItem[2]['title']),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, RightToLeftRoute(page: const PricingPage()));
              },
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: MyColors.kRentalAgreementIconBackgroundColor,
                    ),
                    child: agreementItem[3]['icon'],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(agreementItem[3]['title']),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
