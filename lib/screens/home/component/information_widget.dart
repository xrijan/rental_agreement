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
      children:  [
        const SizedBox(
          width: 180,
          child: Text('More than 100k+ monthly visitors on our platform',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
        ),
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: MyColors.kMonthlyActiveColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 4.0,
                ),
              ),
              child: const Center(child: Text('10k+')),
            ),
            Transform.translate(
              offset: const Offset(70,15),
              child: Container(
                padding: EdgeInsets.zero,
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: MyColors.kSatisfiedClientColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                ),
                child: Center(child: Text('10k+')),
              ),
            ),
            Transform.translate(
              offset: Offset(120,50),
              child: Container(
                padding: EdgeInsets.zero,
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: MyColors.kLawyerColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                ),
                child: Center(child: Text('10k+')),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
