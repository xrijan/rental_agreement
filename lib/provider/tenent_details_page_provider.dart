import 'package:flutter/cupertino.dart';
import 'package:rental_agreement/model/tenant_details_model.dart';

class TenantDetailsProvider with ChangeNotifier {
  TenantDetailsModel _tenantDetailsModel = TenantDetailsModel(
      tenantName: [],
      tenantAddress1: '',
      tenantAddress2: '',
      tenantCity: '',
      tenantPIN: '',
      tenantState: '',
      tenantID: '',
      tenantIDNo: '');

  TenantDetailsModel get tenantDetailsModel => _tenantDetailsModel;
  void updateTenantDetails(TenantDetailsModel tenantDetailsModel) {
    _tenantDetailsModel = tenantDetailsModel;
    notifyListeners();
  }
}
