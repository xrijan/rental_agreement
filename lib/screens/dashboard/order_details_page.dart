import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../constants/size.dart';

class OrderDetailsPage extends StatefulWidget {
  final String phoneNumber;
  final String orderId;
  final String productName;
  final int productPrice;
  final String productImage;
  final String orderDate;
  final String deliveryDate;
  const OrderDetailsPage({Key? key, required this.phoneNumber, required this.orderId, required this.productName, required this.productPrice, required this.productImage, required this.orderDate, required this.deliveryDate}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  ///rating
  late double _rating;
  final double _initialRating = 1.0;
  @override
  void initState() {
    super.initState();
    _rating = _initialRating;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const ImageIcon(
            AssetImage('assets/icons/angle-left.png'),
            color: Colors.black,
            size: 30,
          ),
        ),
        title: const Text(
          'Order Details',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
               Text(widget.phoneNumber),
              SizedBox(height: MySize.kSizeBoxHeight10,),
              const Divider(
                color: Colors.grey,
              ),
              SizedBox(height: MySize.kSizeBoxHeight10,),
               Text('Order ID : ${widget.orderId}'),
              SizedBox(height: MySize.kSizeBoxHeight10,),
              const Divider(
                color: Colors.grey,
              ),
              SizedBox(height: MySize.kSizeBoxHeight10,),
              SizedBox(height: MySize.kScreenHeight/8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Product Name : ${widget.productName}'),
                        Text('Price : ₹ ${widget.productPrice}'),
                      ],
                    ),
                    Image.asset(widget.productImage),
                  ],
                ),
              ),
              SizedBox(height: MySize.kSizeBoxHeight10,),
              const Divider(
                color: Colors.grey,
              ),
              SizedBox(height: MySize.kSizeBoxHeight10,),
              Row(
                children:  [
                  const CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.check,color: Colors.black,),
                  ),
                  const SizedBox(width: 10,),
                  Text('Order Conformed : ${widget.orderDate}')
                ],
              ),
              Transform.translate(
                offset: const Offset(15,0),
                child: Container(
                  height: 40,
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              Row(
                children:  [
                  const CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.check,color: Colors.black,),
                  ),
                  const SizedBox(width: 10,),
                  Text('Delivered At : ${widget.deliveryDate}')
                ],
              ),
              SizedBox(height: MySize.kSizeBoxHeight10,),
              const Divider(
                color: Colors.grey,
              ),
              SizedBox(height: MySize.kSizeBoxHeight10,),
              Center(
                child: SizedBox(
                  height: 50,
                  child: RatingBar.builder(
                    initialRating: _initialRating,
                    direction:  Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return const Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return const Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return const Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return const Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return const Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating;
                      });
                    },
                    updateOnDrag: true,
                  ),
                ),
              ),
              Center(child: TextButton(onPressed: (){}, child: const Text('Write a review'))),
              const Divider(
                color: Colors.grey,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  height: MySize.kScreenHeight/16,
                  child: Row(
                    children: const [
                      Text('Need Help'),
                      Spacer(),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}