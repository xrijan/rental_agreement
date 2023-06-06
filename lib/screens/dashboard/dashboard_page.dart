// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../../constants/size.dart';
// import 'help_center_widget.dart';
// import 'order_widgets.dart';
//
//
//
// class DashboardPage extends StatefulWidget {
//   const DashboardPage({Key? key}) : super(key: key);
//
//   @override
//   State<DashboardPage> createState() => _DashboardPageState();
// }
//
// class _DashboardPageState extends State<DashboardPage> {
//   Widget _buildDashBoardWidget() {
//     switch (current) {
//       case 0:
//         return const OrderWidget();
//       case 1:
//         return const DocumentsAndLockersWidget();
//       case 2:
//         return Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//                 child: Image.asset(
//                   'assets/work-in-progress.png',
//                   height: 100,
//                 )),
//             const Text('Comming Soon 🙂')
//           ],
//         );
//       case 3:
//         return const HelpCenterWidget();
//       default:
//         return Container();
//     }
//   }
//
//   int current = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: SafeArea(
//         child: Container(
//           color : Color(0XFF0f172a),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         current = 0;
//                       });
//                     },
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 300),
//                       margin: const EdgeInsets.all(5),
//                       width: MySize.kScreenWidth / 2.8,
//                       height: MySize.kScreenHeight / 14,
//                       decoration: BoxDecoration(
//                         color: current == 0 ? Colors.white70 : Colors.white54,
//                         borderRadius: current == 0
//                             ? BorderRadius.circular(15)
//                             : BorderRadius.circular(10),
//                         border: current == 0
//                             ? Border.all(
//                             color: Colors.deepPurpleAccent, width: 2)
//                             : null,
//                       ),
//                       child: Center(
//                           child: Text(
//                             'Order',
//                             style: TextStyle(fontSize: MySize.kHeading2),
//                           )),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         current = 1;
//                       });
//                     },
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 300),
//                       margin: const EdgeInsets.all(5),
//                       width: MySize.kScreenWidth / 2.8,
//                       height: MySize.kScreenHeight / 14,
//                       decoration: BoxDecoration(
//                         color: current == 1 ? Colors.white70 : Colors.white54,
//                         borderRadius: current == 0
//                             ? BorderRadius.circular(15)
//                             : BorderRadius.circular(10),
//                         border: current == 1
//                             ? Border.all(
//                             color: Colors.deepPurpleAccent, width: 2)
//                             : null,
//                       ),
//                       child: Center(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               'Documents and Lockers',
//                               style: TextStyle(fontSize: MySize.kHeading2),
//                             ),
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         current = 2;
//                       });
//                     },
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 300),
//                       margin: const EdgeInsets.all(5),
//                       width: MySize.kScreenWidth / 2.8,
//                       height: MySize.kScreenHeight / 14,
//                       decoration: BoxDecoration(
//                         color: current == 2 ? Colors.white70 : Colors.white54,
//                         borderRadius: current == 2
//                             ? BorderRadius.circular(15)
//                             : BorderRadius.circular(10),
//                         border: current == 2
//                             ? Border.all(
//                             color: Colors.deepPurpleAccent, width: 2)
//                             : null,
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           'Product and Services',
//                           style: TextStyle(fontSize: MySize.kHeading2),
//                         ),
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         current = 3;
//                       });
//                     },
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 300),
//                       margin: const EdgeInsets.all(5),
//                       width: MySize.kScreenWidth / 2.8,
//                       height: MySize.kScreenHeight / 14,
//                       decoration: BoxDecoration(
//                         color: current == 3 ? Colors.white70 : Colors.white54,
//                         borderRadius: current == 3
//                             ? BorderRadius.circular(15)
//                             : BorderRadius.circular(10),
//                         border: current == 3
//                             ? Border.all(
//                             color: Colors.deepPurpleAccent, width: 2)
//                             : null,
//                       ),
//                       child: Center(
//                           child: Text(
//                             'Help Center',
//                             style: TextStyle(fontSize: MySize.kHeading2),
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: MySize.kSizeBoxHeight10,
//               ),
//                Container(
//                  width: double.infinity,
//                  decoration: const BoxDecoration(
//                    // Replace with your desired background color
//                    color: Colors.white,
//                    borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(20.0),
//                      topRight: Radius.circular(20.0),
//                    ),
//                  ),
//                  child:  _buildDashBoardWidget(),
//                ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DocumentsAndLockersWidget extends StatefulWidget {
//   const DocumentsAndLockersWidget({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<DocumentsAndLockersWidget> createState() =>
//       _DocumentsAndLockersWidgetState();
// }
//
// class _DocumentsAndLockersWidgetState extends State<DocumentsAndLockersWidget> {
//   final _itemList = <String>[];
//   final GlobalKey<AnimatedListState> _key = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 10,left: 10,top: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: () {},
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 DottedBorder(
//                   color: Colors.black,
//                   strokeWidth: 1,
//                   radius: const Radius.circular(10),
//                   child: Container(
//                     color: const Color(0xFFEBE7F7),
//                     height: MySize.kScreenHeight * 0.10,
//                     width: double.infinity,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                             height: MySize.kScreenHeight * 0.05,
//                             child: Image.asset('assets/icons/image.png')),
//                         const Text(
//                           "Click to Upload",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 8,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                         const Text(
//                           "File Should Be less then 25MB",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 8,
//                               color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: MySize.kSizeBoxHeight20,
//           ),
//           Text(
//             'All Files',
//             style: TextStyle(fontSize: MySize.kHeading2),
//           ),
//           SizedBox(
//             height: MySize.kSizeBoxHeight20,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
