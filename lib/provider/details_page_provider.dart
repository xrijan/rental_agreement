import 'package:flutter/material.dart';
import 'package:rental_agreement/model/owner_details_model.dart';

class OwnerDetailsProvider with ChangeNotifier {
  OwnerDetailsModel _ownerDetailsModel = OwnerDetailsModel(
      ownerName: '',
      ownerAddress1: '',
      ownerAddress2: '',
      pinCode: '',
      city: '',
      state: '',
      pan: '');

  OwnerDetailsModel get ownerDetailsModel => _ownerDetailsModel;

  void updateOwnerDetails(OwnerDetailsModel newOwnerDetailsModel) {
    _ownerDetailsModel = newOwnerDetailsModel;
    notifyListeners();
  }
}
