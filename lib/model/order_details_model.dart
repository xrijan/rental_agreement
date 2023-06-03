
class OrderModel {
  String orderId = '';
  String productName = '';
  String productImage = ' ';
  int productPrice = 0;
  String productConfirmedDate = '';
  String productDeliveryDate = '';
  String rating = '';

  OrderModel(
      {required this.orderId,
      required this.productName,
      required this.productImage,
      required this.productPrice,
      required this.productConfirmedDate,
      required this.productDeliveryDate,
      required this.rating});
}