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
      "image_path":
      'https://cdn1.vectorstock.com/i/1000x1000/96/35/grand-offer-sale-and-discount-banner-template-vector-14299635.jpg'
    },
    {
      "image_path":
      'https://static.vecteezy.com/system/resources/previews/002/453/533/non_2x/big-sale-discount-banner-template-promotion-illustration-free-vector.jpg'
    },
    {
      "image_path":
      'https://static.vecteezy.com/system/resources/previews/002/453/548/original/sale-discount-banner-template-promotion-illustration-free-vector.jpg'
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
            height: MySize.kScreenHeight * 0.10,
            width: double.infinity,
            child: CarouselSlider(
              items: bannerList
                  .map(
                    (item) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
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
