import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/size.dart';
import 'component/carousel_slider_widget.dart';
import 'component/home_page_app_bar.dart';
import 'component/home_page_rental_agreement.dart';
import 'component/information_widget.dart';
import 'component/swiper_builder.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSheetOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: MySize.kScreenWidth * 0.07),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const RentalAgreement(),
                  const CarouselSliderWidget(),
                  const SwiperBuilder(),
                  const InformationWidget(),
                  SizedBox(
                    height: MySize.kScreenHeight * 0.03,
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSheetOpen = true;
                      });
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
            if(_isSheetOpen)
              DraggableScrollableSheet(
                builder: (BuildContext context, ScrollController scrollController) {
                  return SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: MyColors.kAppBarIconBackgroundColor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffeeeeee),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children:   [

                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _isSheetOpen = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Center(child: ImageIcon(AssetImage('assets/icons/angle-down.png'),color: Colors.white,size: 20,)),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      Text('How Can We help You?',style: TextStyle(color: Colors.white,fontSize: MySize.kHeading1),),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('What is the procedure for making a rental agreement?'),
                                          children: const [
                                            Text('The procedure for making rental agreement includes drafting agreement, printing on stamp paper, attesting before two witnesses and registration at sub-registrar office.'),
                                          ],),
                                      ),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('What is e-rental agreement?'),
                                          children: const [
                                            Text('E rental agreement is a new facility that is introduced by the Maharashtra government. It enables you to register your rental agreement online without visiting the sub register office.'),
                                          ],),
                                      ),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('What is Executing a Rental Agreement?'),
                                          children: const [
                                            Text('Executing a rental agreement means the date on which the leaser and lessee have signed the rental agreement. A rental agreement is often signed when the tenant pays the rent to the landlord.'),
                                          ],),
                                      ),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('I am renting an apartment, am I obligated to pay the maintenance charges?'),
                                          children: const [
                                            Text('Yes, the tenant has to pay the maintenance charges. The tenant is advised to pay the maintenance charges as he is using the property. The tenant is also advised to pay the security charges. The owner of the property can also pay the maintenance charges and collect the same from the tenant later. In either case, the tenant has to pay the maintenance charges as he is using the property for his benefit. So the tenant is advised to pay all the maintenance and security charges.'),
                                          ],),
                                      ),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('What is the stamp duty denomination?'),
                                          children: const [
                                            Text('The rental agreement is printed on a stamp paper of recommended value. This makes the agreement legally valid having evidentiary value. It is also submitted as documentary evidence in courts.'),
                                          ],),
                                      ),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('What would be the notice period for early termination of the rental agreement?'),
                                          children: const [
                                            Text('The notice period for early termination of the rental agreement is between one to three months. This clause has to be stated in the rental agreement. Within this period of one to three months, the tenant is asked to vacate the house or property and handle it to the owner of the property.'),
                                          ],),
                                      ),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('Is the tenant allowed to make structural and cosmetic modifications to the property while the rental agreement is in force?'),
                                          children: const [
                                            Text('No, the tenant is not allowed to make structural and cosmetic modifications to the property while the rental agreement is in force. Any changes to the property cannot be made without the prior permission of the landlord. The permission of the landlord has to make in writing so that to avoid any kind of dispute in future.'),
                                          ],),
                                      ),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('Should rental agreements be notarized?'),
                                          children: const [
                                            Text('In India, it is not necessary for the rental agreement to be notarized.'),
                                          ],),
                                      ),
                                      SizedBox(height: MySize.kSizeBoxHeight20,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: ExpansionTile(
                                          childrenPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                          collapsedBackgroundColor: Colors.grey[200],
                                          backgroundColor: Colors.white,
                                          textColor: MyColors.kSecondaryTextColor,
                                          title: const Text('Who are the lessor and lessee?'),
                                          children: const [
                                            Text('The owner of the property who rents the property is known as lessor and the person who intends to have temporary possession of the property is known as lessee.'),
                                          ],),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ));
                },
              ),
          ],
        ),
      ),
    );
  }
}

