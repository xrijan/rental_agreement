import 'package:flutter/material.dart';
import 'package:rental_agreement/model/property_details_model.dart';

class PropertyDetailsProvider with ChangeNotifier {
  PropertyDetailsModel _propertyDetailsModel = PropertyDetailsModel(
      rentalStartDate: '',
      rentalAmount: '',
      rentalDeposit: '',
      residence: '',
      rentalAddressSameAs: '');

  PropertyDetailsModel  get propertyDetailsModel => _propertyDetailsModel;

  void updatePropertyDetails(PropertyDetailsModel propertyDetailsModel){
     _propertyDetailsModel = propertyDetailsModel;
     notifyListeners();
  }
}
