import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../constants/right_to_left_screen.dart';
import '../../constants/size.dart';
import '../../model/model_helper.dart';
import '../../model/order_details_model.dart';
import 'dashboard_page.dart';
import 'order_details_page.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({Key? key}) : super(key: key);

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  List<OrderModel> orderModel = [];
  String newProductName = '';
  @override
  void initState() {
    super.initState();
    orderModel = getOrder();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MySize.kScreenHeight/6 * orderModel.length,
      child: ListView.builder(
          itemCount: orderModel.length,
          itemBuilder: (BuildContext context,index){
            return  InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  RightToLeftRoute(
                    page:  OrderDetailsPage(phoneNumber: '+91 9840030234', orderId: orderModel[index].orderId, productName: orderModel[index].productName, productPrice: orderModel[index].productPrice, productImage: orderModel[index].productImage, orderDate: orderModel[index].productConfirmedDate, deliveryDate: orderModel[index].productDeliveryDate,),
                  ),
                );
              },
              child: Container(
                height: MySize.kScreenHeight/8,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                    border:Border.all(
                        color: Colors.grey.shade200, width: 2)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(orderModel[index].productImage),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivered on ${orderModel[index].productDeliveryDate}'),
                        Text(orderModel[index].productName),
                        RatingBar.builder(
                          initialRating: 0,
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

                            });
                          },
                          updateOnDrag: true,
                        ),
                        Text(
                          'Rating: ${orderModel[index].rating}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
