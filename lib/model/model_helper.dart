import 'order_details_model.dart';

List<OrderModel> getOrder() {
  List<OrderModel> orderDetails = [];

  OrderModel orderModel = OrderModel(
    orderId: '1',
    productName: 'Product 1',
    productImage: 'assets/whatsapp.png',
    productPrice: 10,
    productConfirmedDate: '2023-05-01',
    productDeliveryDate: '2023-05-10',
    rating: '5.3K',
  );
  orderDetails.add(orderModel);

  orderModel = OrderModel(
    orderId: '2',
    productName: 'Product 2',
    productImage: 'assets/linkedin.png',
    productPrice: 20,
    productConfirmedDate: '2023-05-02',
    productDeliveryDate: '2023-05-12',
    rating: '4.1k',
  );
  orderDetails.add(orderModel);

  orderModel = OrderModel(
    orderId: '3',
    productName: 'Product 3',
    productImage: 'assets/instagram.png',
    productPrice: 15,
    productConfirmedDate: '2023-05-03',
    productDeliveryDate: '2023-05-15',
    rating: '3.2K',
  );
  orderDetails.add(orderModel);

  return orderDetails;
}
