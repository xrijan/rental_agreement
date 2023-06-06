import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:rental_agreement/widgets/app_bar_widget.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final List<String> eStampList = [
    '₹20 e-stamp',
    '₹50 e-stamp',
    '₹100 e-stamp',
    '₹200 e-stamp',
    '₹500 e-stamp',
  ];
  final List<String> modeDeliveryList = [
    'Normal Shipping,',
    'Express Shipping'
  ];

  final eStampCtrl = TextEditingController();
  final modeDeliveryCtrl = TextEditingController();
  String eStamp = '';

  double rentalAgreementAmount = 0;
  int promoCode = 40;
  double discountAmount = 0;
  double expressDelivery = 0;
  double total = 0;

  double totalDiscountAmount(rentalAgreementAmount) {
    discountAmount = rentalAgreementAmount - (promoCode/100) * rentalAgreementAmount;
    return discountAmount;
  }
  double totalAmount(expressDelivery) {
    total = discountAmount + expressDelivery;
    return total;
  }

  @override
  void dispose() {
    eStampCtrl.dispose();
    modeDeliveryCtrl.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Payment', onPressed: () { Navigator.pop(context); },),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Select E-Stamp',style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Select the e-stamp for the rental agreement'),
                  const SizedBox(height: 10,),
                  CustomDropdown.search(
                      hintText: 'e-Stamp',
                      items: eStampList,
                      controller: eStampCtrl,
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      onChanged: (value){
                        switch(value){
                          case '₹20 e-stamp':
                            setState(() {
                              rentalAgreementAmount = 180;
                              totalDiscountAmount(rentalAgreementAmount);
                            });
                            break;
                          case '₹50 e-stamp':
                            setState(() {
                              rentalAgreementAmount = 330;
                              totalDiscountAmount(rentalAgreementAmount);
                            });
                            break;
                          case '₹100 e-stamp':
                            setState(() {
                              rentalAgreementAmount = 415;
                              totalDiscountAmount(rentalAgreementAmount);
                            });
                            break;
                          case '₹200 e-stamp':
                            setState(() {
                              rentalAgreementAmount = 765;
                              totalDiscountAmount(rentalAgreementAmount);
                            });
                            break;
                          case '₹500 e-stamp':
                            setState(() {
                              rentalAgreementAmount = 1115;
                              totalDiscountAmount(rentalAgreementAmount);
                            });
                            break;

                        }
                      }
                  ),
                  const SizedBox(height: 20,),
                  const Text('Select Mode of Delivery'),
                  const SizedBox(height: 10,),
                  CustomDropdown.search(
                    hintText: 'Mode of Delivery',
                    items: modeDeliveryList,
                    controller: modeDeliveryCtrl,
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    onChanged: (value){
                      if(value == 'Express Shipping' ){
                        setState(() {
                          expressDelivery = 50;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),

          ),
          SizedBox(height: 20,),
          Text('Cart',style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Amount of Rental Agreement '),
                      Text('₹ $rentalAgreementAmount',),
                    ],
                  ),
                  Text('including drafting, shipping & handling',style: TextStyle(color: Colors.grey,fontSize: 12),),
                  const Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text('PROMO CODE',style: TextStyle(color: Colors.green),),
                      Text('$promoCode %',style: TextStyle(color: Colors.green),),
                    ],
                  ),
                  const Text('including drafting, shipping & handling',style: TextStyle(color: Colors.grey,fontSize: 12),),
                  const Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text('Discounted Amount',),
                      Text('₹ $discountAmount',),
                    ],
                  ),
                  const Text('commonly used in Karnataka',style: TextStyle(color: Colors.grey,fontSize: 12),),
                  const Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text('Express delivery',),
                      Text('₹ $expressDelivery',),
                    ],
                  ),
                  const Text('Standard Delivery Option is FREE',style: TextStyle(color: Colors.grey,fontSize: 12),),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text('Total Amount Payable',style: TextStyle(color: Colors.blue,fontSize: 18),),
                      Text('₹ ${totalAmount(expressDelivery)}',style: TextStyle(color: Colors.blue),),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),

          ),
          const Spacer(),
          Center(
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF0f172a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: (){

                  }, child: Text('Pay',style: TextStyle(fontSize: MySize.kHeading2),)),
            ),
          ),
          const SizedBox(height: 20,),
        ],
    ),
      ),);
  }
}
