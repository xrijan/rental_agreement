import 'package:flutter/material.dart';
import 'package:rental_agreement/constants/colors.dart';
import '../../constants/size.dart';
import 'document_locker_screen.dart';
import 'help_center_widget.dart';
import 'order_widgets.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  Widget _buildDashBoardWidget() {
    switch (current) {
      case 0:
        return const OrderWidget();
      case 1:
        return const DocumentsAndLockersWidget();
      case 2:
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                    'assets/work-in-progress.png',
                    height: 100,
                  )),
              const Text('Comming Soon 🙂')
            ],
          ),
        );
      case 3:
        return const HelpCenterWidget();
      default:
        return Container();
    }
  }

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0f172a),
      appBar: AppBar(
         title: const Align(
           alignment: Alignment.topLeft,
             child: Text('Dashboard')),
        automaticallyImplyLeading: false, // Le
        elevation: 1,
        backgroundColor: const Color(0XFF0f172a),
      ),

      body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                // Replace with your desired background color
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(children: [
                SizedBox(height: 10,width: double.infinity,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = 0;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5),
                          width: MySize.kScreenWidth / 2.5,
                          height: MySize.kScreenHeight / 14,
                          decoration: BoxDecoration(
                            color:  Colors.white ,
                            borderRadius: current == 0
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(10),
                            border: current == 0
                                ? Border.all(
                                color: Colors.deepPurpleAccent, width: 2)
                                : Border.all(
                                color: const Color(0xFFE1E5FF), width: 1),
                          ),
                          child: const Center(
                              child: Text(
                                'Order',
                                style: TextStyle(fontSize: 16),
                              )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = 1;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5),
                          width: MySize.kScreenWidth / 2.5,
                          height: MySize.kScreenHeight / 14,
                          decoration: BoxDecoration(
                            color:  Colors.white ,

                            borderRadius: current == 0
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(10),
                            border: current == 1
                                ? Border.all(
                                color: Colors.deepPurpleAccent, width: 2)
                                : Border.all(
                                color: const Color(0xFFE1E5FF), width: 1),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Documents and Lockers',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = 2;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5),
                          width: MySize.kScreenWidth / 2.5,
                          height: MySize.kScreenHeight / 14,
                          decoration: BoxDecoration(
                            color:  Colors.white ,

                            borderRadius: current == 2
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(10),
                            border: current == 2
                                ? Border.all(
                                color: Colors.deepPurpleAccent, width: 2)
                                : Border.all(
                                color: const Color(0xFFE1E5FF), width: 1),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Product and Services',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = 3;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5),
                          width: MySize.kScreenWidth / 2.5,
                          height: MySize.kScreenHeight / 14,
                          decoration: BoxDecoration(
                            color:  Colors.white ,
                            borderRadius: current == 3
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(10),
                            border: current == 3
                                ? Border.all(
                                color: Colors.deepPurpleAccent, width: 2)
                                : Border.all(
                                color: const Color(0xFFE1E5FF), width: 1),
                          ),
                          child: Center(
                              child: Text(
                                'Help Center',
                                style: TextStyle(fontSize: 16),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],),
            ),
            Expanded(child: _buildDashBoardWidget())
          ],
      ),
    );
  }
}
