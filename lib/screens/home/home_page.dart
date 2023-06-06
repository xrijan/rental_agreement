// import 'package:flutter/material.dart';
// import 'package:rental_agreement/model/faq_model.dart';
// import '../../constants/colors.dart';
// import '../../constants/size.dart';
// import 'component/carousel_slider_widget.dart';
// import 'component/home_page_app_bar.dart';
// import 'component/home_page_rental_agreement.dart';
// import 'component/information_widget.dart';
// import 'component/swiper_builder.dart';
//
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final FaqModel faqModel = FaqModel();
//   bool _isSheetOpen = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0XFF0f172a),
//       appBar: const CustomAppBar(),
//       body: SafeArea(
//         child: Container(
//           decoration: const BoxDecoration(
//             // Replace with your desired background color
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20.0),
//               topRight: Radius.circular(20.0),
//             ),
//           ),
//           child: Stack(
//             children: [
//               Padding(
//                 padding:
//                 EdgeInsets.symmetric(horizontal: MySize.kScreenWidth * 0.07),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const RentalAgreement(),
//                     const CarouselSliderWidget(),
//                     const SwiperBuilder(),
//                     const InformationWidget(),
//                     Spacer(),
//                     GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           _isSheetOpen = true;
//                         });
//                       },
//                       child: Container(
//                         height: MySize.kScreenHeight * 0.06,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: MyColors.kAppBarIconBackgroundColor,
//                           borderRadius: BorderRadius.circular(8),
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Color(0xffeeeeee),
//                               blurRadius: 10,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: Row(
//                             children: const [
//                               Text(
//                                 'Do you need help? Talk with us',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               Spacer(),
//                               ImageIcon(
//                                 AssetImage('assets/icons/angle-up.png'),
//                                 color: Colors.white,
//                                 size: 16,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: MySize.kSizeBoxHeight10,width: double.infinity,)
//                   ],
//                 ),
//               ),
//               if(_isSheetOpen)
//                 DraggableScrollableSheet(
//                   builder: (BuildContext context, ScrollController scrollController) {
//                     return SingleChildScrollView(
//                         controller: scrollController,
//                         child: Container(
//                           width: double.infinity,
//                           decoration: const BoxDecoration(
//                             color: MyColors.kAppBarIconBackgroundColor,
//                             borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0xffeeeeee),
//                                 blurRadius: 10,
//                                 offset: Offset(0, 4),
//                               ),
//                             ],
//                           ),
//                           child: Column(
//                             children:   [
//
//                               GestureDetector(
//                                   onTap: (){
//                                     setState(() {
//                                       _isSheetOpen = false;
//                                     });
//                                   },
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         const Center(child: ImageIcon(AssetImage('assets/icons/angle-down.png'),color: Colors.white,size: 20,)),
//                                         SizedBox(height: MySize.kSizeBoxHeight20,),
//                                         Text('How Can We help You?',style: TextStyle(color: Colors.white,fontSize: MySize.kHeading1),),
//                                         SizedBox(height: MySize.kSizeBoxHeight20,),
//                                        ...faqModel.faq.map((faq) => Container(
//                                          margin: EdgeInsets.only(bottom: 10),
//                                          child: ClipRRect(
//                                            borderRadius: BorderRadius.circular(10),
//                                            child: ExpansionTile(
//                                              childrenPadding:   EdgeInsets.symmetric(vertical: 10,horizontal: 20),
//                                              collapsedBackgroundColor: Colors.grey[200],
//                                              backgroundColor: Colors.white,
//                                              textColor: MyColors.kSecondaryTextColor,
//                                              title:  Text(faq['question']!),
//                                              children:  [
//                                                Text(faq['answer']!),
//                                              ],),
//                                          ),
//                                        ), ),
//                                       ],
//                                     ),
//                                   )),
//                             ],
//                           ),
//                         ));
//                   },
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
