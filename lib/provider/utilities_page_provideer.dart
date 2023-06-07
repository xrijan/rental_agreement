import 'package:flutter/cupertino.dart';
import 'package:rental_agreement/model/utilities_model.dart';

class UtilitiesProvider with ChangeNotifier {
  UtilitiesModel _utilitiesModel = UtilitiesModel(
      rentPaymentDate: '',
      billPayedBy: '',
      noticePeriod: '',
      rentIncrement: '',
      anyOtherClauses: '',
      modeOfPayment: '',
      maintenanceAmount: '',
      lock: '',
      rentalAddressSameAs: '',
      address1: '',
      address2: '',
      city: '',
      pinCode: '',
      state: '');

  UtilitiesModel get utilitiesModel => _utilitiesModel;

  void updateUtilitiesModel(UtilitiesModel utilitiesModel) {
    _utilitiesModel = utilitiesModel;
      notifyListeners();
  }

}
