import 'package:flutter/material.dart';
import 'package:rental_agreement/screens/login/login_screen.dart';

import '../../constants/right_to_left_screen.dart';
import '../../model/onboarding_model.dart';
import '../../widgets/dot_indicator_widget.dart';
import '../../widgets/onboarding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageCtrl;
  int _pageIndex = 0;

  final List<OnBoardingModel> items = [
    OnBoardingModel(
      topColor: 0xFFDBDCF8,
      bottomColor: 0xFF9FA1C0,
      image: 'assets/online1.png',
      heading: 'Fill\nOnline Details',
      textOverlay: 'assets/online_text.png',
      description:
      'Submit your details from anywhere and anytime,or email us with all the mandatory details required to draft the rental agreement.',
    ),
    OnBoardingModel(
        topColor: 0xFFFCFFFC,
        bottomColor: 0xFF949189,
        image: 'assets/payments1.png',
        heading: 'Payments\nSecure and Easy',
        textOverlay: 'assets/payments_text.png',
        description: 'We accept all credit, debit, internet and net banking.'),
    OnBoardingModel(
        topColor: 0xFFA4ADE6,
        bottomColor: 0xFFDDBEC7,
        image: 'assets/delivery1.png',
        heading: 'Safe and Fast\nDelivery',
        textOverlay: 'assets/delivery_text.png',
        description: 'Receive your drafted rental agreement at your doorstep.'),
  ];
  @override
  void initState() {
    _pageCtrl = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _pageCtrl.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(items[_pageIndex].topColor),
              Color(items[_pageIndex].bottomColor),
            ], // Replace with your desired colors
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          RightToLeftRoute(
                            page: LogInScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Color(0XFF0f172a)),
                      ))),
              Expanded(
                child: PageView.builder(
                    itemCount: items.length,
                    controller: _pageCtrl,
                    onPageChanged: (value) {
                      setState(() {
                        _pageIndex = value;
                      });
                    },
                    itemBuilder: (context, int index) => OnBoardingWidget(
                      image: items[index].image,
                      textOverlay: items[index].textOverlay,
                      heading: items[index].heading,
                      description: items[index].description,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ...List.generate(
                        items.length,
                            (index) =>
                            DotIndicatorWidget(isActive: index == _pageIndex)),
                    const Spacer(),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: const Color(0XFF0f172a),
                            ),
                            onPressed: () {
                              if(_pageIndex<2) {
                                _pageCtrl.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease);
                              } else {
                                Navigator.push(
                                  context,
                                  RightToLeftRoute(
                                    page: LogInScreen(),
                                  ),
                                );
                              }

                            },
                            child: const Icon(Icons.arrow_forward_outlined))),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
