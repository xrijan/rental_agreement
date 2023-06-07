class OwnerDetailsModel {
  String ownerName = '';
  String ownerAddress1 = '';
  String ownerAddress2 = '';
  String pinCode = '';
  String city = '';
  String state = '';
  String pan = ' ';

  OwnerDetailsModel(
      {required this.ownerName,
      required this.ownerAddress1,
      required this.ownerAddress2,
      required this.pinCode,
      required this.city,
      required this.state,
      required this.pan});
}
