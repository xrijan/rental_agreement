import 'order_details_model.dart';

List<OrderModel> getOrder() {
  List<OrderModel> orderDetails = [];

  OrderModel orderModel = OrderModel(
    orderId: 'FX-250123-110-12345',
    productName: 'Product 1',
    productImage: 'assets/model1.jpg',
    productPrice: 10,
    productConfirmedDate: '2023-05-01',
    productDeliveryDate: '2023-05-10',
    rating: '5.3K', productDescription: 'This luxurious serum is meticulously crafted with a blend of potent ingredients to transform your skin and unveil a radiant, youthful complexion.',
  );
  orderDetails.add(orderModel);

  orderModel = OrderModel(
    orderId: 'FX-345673-110-12345',
    productName: 'Product 2',
    productImage: 'assets/model2.jpeg',
    productPrice: 20,
    productConfirmedDate: '2023-05-02',
    productDeliveryDate: '2023-05-12',
    rating: '4.1k', productDescription: 'Introducing the revolutionary iPhone, the epitome of technological innovation and sophistication',
  );
  orderDetails.add(orderModel);

  orderModel = OrderModel(
    orderId: 'FX-250123-110-21345',
    productName: 'Product 3',
    productImage: 'assets/model3.jpg',
    productPrice: 15,
    productConfirmedDate: '2023-05-03',
    productDeliveryDate: '2023-05-15',
    rating: '3.2K', productDescription: 'Introducing our new "Silken Waves" shampoo, the ultimate solution for luscious, vibrant hair that turns heads wherever you go',
  );
  orderDetails.add(orderModel);

  return orderDetails;
}
