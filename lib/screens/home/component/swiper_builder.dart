import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';


class SwiperBuilder extends StatefulWidget {
  const SwiperBuilder({
    Key? key,
  }) : super(key: key);

  @override
  State<SwiperBuilder> createState() => _SwiperBuilderState();
}
List cardColor = [
  MyColors.kSliderColorA,
  MyColors.kSliderColorB,
  MyColors.kSliderColorC,
];

class _SwiperBuilderState extends State<SwiperBuilder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Swiper(
            itemWidth: 340,
            itemHeight: 200,
            loop: true,
            duration: 520,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: cardColor[index],
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            },
            itemCount: cardColor.length,
            layout: SwiperLayout.STACK,
          ),
        ),
      ),
    );
  }
}