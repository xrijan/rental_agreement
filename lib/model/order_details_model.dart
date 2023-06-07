
class OrderModel {
  String orderId = '';
  String productName = '';
  String productDescription = '';
  String productImage = ' ';
  int productPrice = 0;
  String productConfirmedDate = '';
  String productDeliveryDate = '';
  String rating = '';

  OrderModel(
      {required this.orderId,
      required this.productName,
        required this.productDescription,
      required this.productImage,
      required this.productPrice,
      required this.productConfirmedDate,
      required this.productDeliveryDate,
      required this.rating});
}