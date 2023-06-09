import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

class InformationWidget extends StatefulWidget {
  const InformationWidget({Key? key}) : super(key: key);

  @override
  State<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox(
            child: Text(
              'More than 10k+ monthly visitors on our platform',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 150,
          width: 220,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                height: 120,
                width: 120,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: MyColors.kMonthlyActiveColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('7k+'),
                      Text(
                        'monthly active\nuser',
                        style: TextStyle(fontSize: 8, color: Color(0xFFBDC6E1)),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                height: 80,
                width: 80,
                top: 10,
                left: 100,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: MyColors.kSatisfiedClientColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('4k+'),
                      Text(
                        'satisfied \nclient',
                        style: TextStyle(fontSize: 8, color: Color(0xFFBDC6E1)),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                height: 60,
                width: 60,
                top: 40,
                left: 160,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: MyColors.kLawyerColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('1000+'),
                      Text(
                        'Lawyer',
                        style: TextStyle(fontSize: 8, color: Color(0xFFBDC6E1)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

  }
}
