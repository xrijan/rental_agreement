import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:rental_agreement/widgets/app_bar_widget.dart';

import '../../constants/size.dart';


class PricingPage extends StatefulWidget {
  const PricingPage({Key? key}) : super(key: key);

  @override
  State<PricingPage> createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Pricing', onPressed: () {Navigator.pop(context);},),
      body: ListView(
        padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: 50),

        children : [
          FadeInUp(
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: double.infinity,
              decoration:   BoxDecoration(
                color: const Color(0xFFACB1D6),
                borderRadius: const BorderRadius.only(topRight: Radius.circular(24)),
                border: Border.all(color: Colors.black),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 1.0,
                      offset: Offset(
                        -7.0, // Move to right 7.0 horizontally
                        8.0, // Move to bottom 8.0 Vertically
                      )
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'e-Stamp',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          TextSpan(text: ' of',style: TextStyle(fontSize: 12,color: Colors.black)),
                          TextSpan(text: ' ₹20',style: TextStyle(fontSize: 20,color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(height: MySize.kSizeBoxHeight10,),
                    const Text('department Digital Media Specialist, Communication department Digital '),
                    SizedBox(height: MySize.kSizeBoxHeight10,),
                    Container(
                      height: 40,
                      width: MySize.kScreenWidth/2.5,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: const Center(child: Text('₹ 180',style: TextStyle(color: Colors.white,fontSize: 16),)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MySize.kSizeBoxHeight20),
          FadeInUp(
            delay: const Duration(milliseconds: 150),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: double.infinity,
              decoration:   BoxDecoration(
                color: const Color(0xFFBFCCB5),
                borderRadius: const BorderRadius.only(topRight: Radius.circular(24)),
                border: Border.all(color: Colors.black),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 1.0,
                      offset: Offset(
                        -7.0, // Move to right 7.0 horizontally
                        8.0, // Move to bottom 8.0 Vertically
                      )
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'e-Stamp',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          TextSpan(text: ' of',style: TextStyle(fontSize: 12,color: Colors.black)),
                          TextSpan(text: ' ₹50',style: TextStyle(fontSize: 20,color: Colors.black)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('department Digital Media Specialist, Communication department Digital '),
                    const SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: MySize.kScreenWidth/2.5,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: const Center(child: Text('₹ 280',style: TextStyle(color: Colors.white,fontSize: 16),)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MySize.kSizeBoxHeight20),
          FadeInUp(
            delay: const Duration(milliseconds: 200),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: double.infinity,
              decoration:   BoxDecoration(
                color: const Color(0xFFF7E1AE),
                borderRadius: const BorderRadius.only(topRight: Radius.circular(24)),
                border: Border.all(color: Colors.black),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 1.0,
                      offset: Offset(
                        -7.0, // Move to right 7.0 horizontally
                        8.0, // Move to bottom 8.0 Vertically
                      )
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'e-Stamp',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          TextSpan(text: ' of',style: TextStyle(fontSize: 12,color: Colors.black)),
                          TextSpan(text: ' ₹100',style: TextStyle(fontSize: 20,color: Colors.black)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('department Digital Media Specialist, Communication department Digital '),
                    const SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: MySize.kScreenWidth/2.5,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: const Center(child: Text('₹ 350',style: TextStyle(color: Colors.white,fontSize: 16),)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MySize.kSizeBoxHeight20),
          FadeInUp(
            delay: const Duration(milliseconds: 250),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: double.infinity,
              decoration:   BoxDecoration(
                color: const Color(0xFFC8B6A6),
                borderRadius: const BorderRadius.only(topRight: Radius.circular(24)),
                border: Border.all(color: Colors.black),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 1.0,
                      offset: Offset(
                        -7.0, // Move to right 7.0 horizontally
                        8.0, // Move to bottom 8.0 Vertically
                      )
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'e-Stamp',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          TextSpan(text: ' of',style: TextStyle(fontSize: 12,color: Colors.black)),
                          TextSpan(text: ' ₹200',style: TextStyle(fontSize: 20,color: Colors.black)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('department Digital Media Specialist, Communication department Digital '),
                    const SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: MySize.kScreenWidth/2.5,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: const Center(child: Text('₹ 480',style: TextStyle(color: Colors.white,fontSize: 16),)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MySize.kSizeBoxHeight20),
          FadeInUp(
            delay: const Duration(milliseconds: 300),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: double.infinity,
              decoration:   BoxDecoration(
                color: const Color(0xFFE8A0BF),
                borderRadius: const BorderRadius.only(topRight: Radius.circular(24)),
                border: Border.all(color: Colors.black),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 1.0,
                      offset: Offset(
                        -7.0, // Move to right 7.0 horizontally
                        8.0, // Move to bottom 8.0 Vertically
                      )
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'e-Stamp',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          TextSpan(text: ' of',style: TextStyle(fontSize: 12,color: Colors.black)),
                          TextSpan(text: ' ₹500',style: TextStyle(fontSize: 20,color: Colors.black)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('department Digital Media Specialist, Communication department Digital '),
                    const SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: MySize.kScreenWidth/2.5,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: const Center(child: Text('₹ 850',style: TextStyle(color: Colors.white,fontSize: 16),)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MySize.kSizeBoxHeight20),
      ],
      ),
    );
  }
}
