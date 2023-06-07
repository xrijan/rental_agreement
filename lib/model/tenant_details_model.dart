class TenantDetailsModel {
  List<String> tenantName = [];
  String tenantAddress1 = '';
  String tenantAddress2 = '';
  String tenantCity = '';
  String tenantPIN = '';
  String tenantState = '';
  String tenantID = '';
  String tenantIDNo = '';

  TenantDetailsModel(
      {required this.tenantName,
      required this.tenantAddress1,
      required this.tenantAddress2,
      required this.tenantCity,
      required this.tenantPIN,
      required this.tenantState,
      required this.tenantID,
      required this.tenantIDNo});
}
