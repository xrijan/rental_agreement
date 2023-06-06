import 'package:flutter/material.dart';
import 'package:rental_agreement/constants/size.dart';
import 'package:rental_agreement/screens/home/profile_page.dart';
import '../../constants/colors.dart';
import '../../constants/right_to_left_screen.dart';
import '../../model/faq_model.dart';
import 'component/carousel_slider_widget.dart';
import 'component/home_page_rental_agreement.dart';
import 'component/information_widget.dart';
import 'component/swiper_builder.dart';
import 'notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FaqModel faqModel = FaqModel();
  bool _isSheetOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0f172a),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        RightToLeftRoute(
                          page: const NotificationPage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    tooltip: 'Notifications',
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        RightToLeftRoute(
                          page: const ProfilePage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    tooltip: 'Profile',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MySize.kSizeBoxHeight10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  // Replace with your desired background color
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      RentalAgreement(),
                      CarouselSliderWidget(),
                      SwiperBuilder(),
                      InformationWidget(),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                width: double.infinity,
                                color: MyColors.kAppBarIconBackgroundColor,

                                child: ListView(
                                  shrinkWrap: true,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 20,
                                          horizontal: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Center(
                                              child: ImageIcon(
                                                AssetImage('assets/icons/angle-down.png'),
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                            SizedBox(height: MySize.kSizeBoxHeight20),
                                            Text(
                                              'How Can We help You?',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: MySize.kHeading1,
                                              ),
                                            ),
                                            SizedBox(height: MySize.kSizeBoxHeight20),
                                            ...faqModel.faq.map(
                                                  (faq) => Container(
                                                margin: EdgeInsets.only(bottom: 10),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: ExpansionTile(
                                                    childrenPadding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 20,
                                                    ),
                                                    collapsedBackgroundColor: Colors.grey[200],
                                                    backgroundColor: Colors.white,
                                                    textColor: MyColors.kSecondaryTextColor,
                                                    title: Text(faq['question']!),
                                                    children: [
                                                      Text(faq['answer']!),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },

                        child: Container(
                          height: MySize.kScreenHeight * 0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: MyColors.kAppBarIconBackgroundColor,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffeeeeee),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: const [
                                Text(
                                  'Do you need help? Talk with us',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                ImageIcon(
                                  AssetImage('assets/icons/angle-up.png'),
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
