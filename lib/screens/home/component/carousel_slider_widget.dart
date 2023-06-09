import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants/size.dart';



class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  List bannerList = [
    {
      "image_path": 'assets/banner1.jpg'
    },
    {
      "image_path": 'assets/banner2.jpg',
    },
    {
      "image_path":
      'assets/banner3.jpg'
    }
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 80,
            width: double.infinity,
            child: CarouselSlider(
              items: bannerList
                  .map(
                    (item) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item['image_path'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: bannerList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => carouselController.animateToPage(entry.key),
              child: Container(
                width: currentIndex == entry.key ? 17 : 7,
                height: 7.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 3.0,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:
                    currentIndex == entry.key ? Colors.black : Colors.grey),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
