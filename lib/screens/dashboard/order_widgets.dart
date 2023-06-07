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
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: SizedBox(
        height: MySize.kScreenHeight,
        child: ListView.builder(
            itemCount: orderModel.length,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    RightToLeftRoute(
                      page: OrderDetailsPage(
                        phoneNumber: '+91 9840030234',
                        orderId: orderModel[index].orderId,
                        productName: orderModel[index].productName,
                        productPrice: orderModel[index].productPrice,
                        productImage: orderModel[index].productImage,
                        orderDate: orderModel[index].productConfirmedDate,
                        deliveryDate: orderModel[index].productDeliveryDate, productDescription: orderModel[index].productDescription,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: MySize.kScreenHeight / 8,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.grey.shade200, width: 2)),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(orderModel[index].productImage)),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Delivered on ${orderModel[index].productDeliveryDate}'),
                          Text(orderModel[index].productName),
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
      ),
    );
  }
}
