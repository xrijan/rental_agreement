import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_agreement/screens/home/payment.dart';
import 'package:rental_agreement/widgets/app_bar_widget.dart';
import 'package:rental_agreement/widgets/text_form_field_widgets.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import '../../constants/right_to_left_screen.dart';
import '../../constants/size.dart';
import '../../model/drope_down_list_model.dart';
import '../../provider/details_page_provider.dart';
import '../../provider/property_page_provider.dart';
import '../../provider/tenent_details_page_provider.dart';
import '../../provider/utilities_page_provideer.dart';


class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final DropDownList dropDownList = DropDownList();
  @override
  Widget build(BuildContext context) {
    ///provider
    final ownerDetailsProvider = Provider.of<OwnerDetailsProvider>(context);
    final ownerDetails = ownerDetailsProvider.ownerDetailsModel;

    final tenantDetailsProvider = Provider.of<TenantDetailsProvider>(context);
    final tenantDetails = tenantDetailsProvider.tenantDetailsModel;

    final propertyDetailsProvider = Provider.of<PropertyDetailsProvider>(context);
    final propertyDetails = propertyDetailsProvider.propertyDetailsModel;

    final utilitiesDetailsProvider = Provider.of<UtilitiesProvider>(context);
    final utilitiesDetails = utilitiesDetailsProvider.utilitiesModel;

    ///controller owner
    final ownerNameCtrl = TextEditingController();
    ownerNameCtrl.text = ownerDetails.ownerName;
    final ownerAddress1Ctrl = TextEditingController();
    ownerAddress1Ctrl.text = ownerDetails.ownerAddress1;
    final ownerAddress2Ctrl = TextEditingController();
    ownerAddress2Ctrl.text = ownerDetails.ownerAddress2;
    final ownerPinCodeCtrl = TextEditingController();
    ownerPinCodeCtrl.text = ownerDetails.pinCode;
    final ownerStateDropdownCtrl = TextEditingController();
    ownerStateDropdownCtrl.text = ownerDetails.state;
    final ownerCityDropdownCtrl = TextEditingController();
    ownerCityDropdownCtrl.text = ownerDetails.city;
    final ownerPANCtrl = TextEditingController();
    ownerPANCtrl.text = ownerDetails.pan;

    ///controller tenant
    final tenantAddress1Ctrl = TextEditingController();
    tenantAddress1Ctrl.text = tenantDetails.tenantAddress1;
    final tenantAddress2Ctrl = TextEditingController();
    tenantAddress2Ctrl.text = tenantDetails.tenantAddress2;
    final tenantCityDropdownCtrl = TextEditingController();
    tenantCityDropdownCtrl.text = tenantDetails.tenantCity;
    final tenantPinCodeCtrl = TextEditingController();
    tenantPinCodeCtrl.text = tenantDetails.tenantPIN;
    final tenantStateDropdownCtrl = TextEditingController();
    tenantStateDropdownCtrl.text = tenantDetails.tenantState;
    tenantPinCodeCtrl.text = tenantDetails.tenantPIN;
    final tenantIdDropdownCtrl = TextEditingController();
    tenantIdDropdownCtrl.text = tenantDetails.tenantID;
    final tenantIdNoCtrl = TextEditingController();
    tenantIdNoCtrl.text = tenantDetails.tenantID;


    ///controller property
    final propertyRentAmountCtrl = TextEditingController();
    final propertyRentDepositCtrl = TextEditingController();
    final propertyResidenceTypeDropdownCtrl = TextEditingController();
    final propertyAddress1Ctrl = TextEditingController();
    final propertyAddress2Ctrl = TextEditingController();
    final propertyCityDropdownCtrl = TextEditingController();
    final propertyPinCodeCtrl = TextEditingController();
    final propertyStateDropdownCtrl = TextEditingController();

    ///utilities
    final electricityWaterBillPayCtrl = TextEditingController();
    electricityWaterBillPayCtrl.text = utilitiesDetails.billPayedBy;
    final minimumLockListCtrl = TextEditingController();
    final minimumNoticeListCtrl = TextEditingController();
    minimumNoticeListCtrl.text = utilitiesDetails.noticePeriod;
    final rentalIncrementListCtrl = TextEditingController();
    rentalIncrementListCtrl.text = utilitiesDetails.rentIncrement;
    final paymentModeListCtrl = TextEditingController();
    paymentModeListCtrl.text = utilitiesDetails.modeOfPayment;
    final additionalUtilitiesCtrl = TextEditingController();
    final rentPaymentDateCtrl = TextEditingController();
    rentPaymentDateCtrl.text = utilitiesDetails.rentPaymentDate;
    final anyOthersClausesCtrl = TextEditingController();
    anyOthersClausesCtrl.text = utilitiesDetails.anyOtherClauses;
    final monthlyMaintenanceAmountCtrl = TextEditingController();


    return Scaffold(
      appBar: AppBarWidget(title: 'Review', onPressed: () {
        Navigator.pop(context);
      },),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///pwner
              Text('Owner Details',style: TextStyle(fontSize: MySize.kHeading1),),
              const SizedBox(height: 20,),
              TextFormFieldWidgets(label: 'Name', validateMsg: '', textEditingController: ownerNameCtrl),
              TextFormFieldWidgets(label: 'Address 1', validateMsg: '', textEditingController: ownerAddress1Ctrl),
              TextFormFieldWidgets(label: 'Address 2', validateMsg: '', textEditingController: ownerAddress2Ctrl),
              TextFormFieldWidgets(label: 'Pin Code', validateMsg: '', textEditingController: ownerPinCodeCtrl),
              TextFormFieldWidgets(label: 'City', validateMsg: '', textEditingController: ownerCityDropdownCtrl),
              TextFormFieldWidgets(label: 'State', validateMsg: '', textEditingController: ownerStateDropdownCtrl),
              TextFormFieldWidgets(label: 'Pan', validateMsg: '', textEditingController: ownerPANCtrl),
              const SizedBox(height: 10,),


              ///tenent
              Text('Tenant Details',style: TextStyle(fontSize: MySize.kHeading1),),
              TextFormFieldWidgets(
                label: 'Address line 1',
                validateMsg: 'Please Enter Your Address',
                textEditingController: tenantAddress1Ctrl,
              ),
              TextFormFieldWidgets(
                label: 'Address line 2',
                validateMsg: 'Please Enter Your Address',
                textEditingController: tenantAddress2Ctrl,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomDropdown.search(
                        hintText: 'City',
                        items: dropDownList.cityList,
                        controller: tenantCityDropdownCtrl,
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(4)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 120,
                      height: 48,
                      child: TextField(
                        controller: tenantPinCodeCtrl,
                        decoration: const InputDecoration(
                            labelText: 'PIN', border: OutlineInputBorder()),
                      ),
                    )
                  ],
                ),
              ),
              CustomDropdown.search(
                hintText: 'State',
                items: dropDownList.stateList,
                controller: tenantStateDropdownCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CustomDropdown.search(
                  hintText: 'Select ID proof',
                  items: dropDownList.idList,
                  controller: tenantIdDropdownCtrl,
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
              ),
              TextFormFieldWidgets(
                label: 'ID NO.',
                validateMsg: 'Please enter your id number  Tenant 1',
                textEditingController: tenantIdNoCtrl,
              ),
              const SizedBox(height: 10,),

              Text('Property Details',style: TextStyle(fontSize: MySize.kHeading1),),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: MySize.kScreenWidth / 2.4,
                      child: TextFormFieldWidgets(
                        label: 'Rent Amount',
                        validateMsg: 'Rental Start Date',
                        textEditingController: propertyRentAmountCtrl,
                      )),
                  SizedBox(
                      width: MySize.kScreenWidth / 2.4,
                      child: TextFormFieldWidgets(
                        label: 'Rent Deposit',
                        validateMsg: 'Rental Start Date',
                        textEditingController: propertyRentDepositCtrl,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 180,
                  child: CustomDropdown.search(
                    hintText: 'Residence Type',
                    items: dropDownList.residenceTypeList,
                    controller: propertyResidenceTypeDropdownCtrl,
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Rental address same as?'),
              ),


              Text('Utilities ',style: TextStyle(fontSize: MySize.kHeading1),),
              const SizedBox(height: 20,),
              TextFormFieldWidgets(
                label: 'Utilities',
                validateMsg: 'Please enter additional utilities',
                textEditingController: additionalUtilitiesCtrl,
              ),
              TextFormFieldWidgets(
                label: 'Rent payment date',
                validateMsg: 'Please enter the rent payable date(every month)',
                textEditingController: rentPaymentDateCtrl,
              ),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
              ),
              CustomDropdown.search(
                hintText: 'Electricity/Water charges to be paid by',
                items: dropDownList.electricityWaterBillPay,
                controller: electricityWaterBillPayCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              SizedBox(
                height: 20,
              ),
              CustomDropdown.search(
                hintText: 'Minimum notice period in months',
                items: dropDownList.minimumNoticeList,
                controller: minimumNoticeListCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              SizedBox(
                height: 20,
              ),
              CustomDropdown.search(
                hintText: 'Rent increment after 11 months by',
                items: dropDownList.rentalIncrementList,
                controller: rentalIncrementListCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              TextFormFieldWidgets(
                label: 'Any other clauses?(optional)',
                validateMsg: 'text format',
                textEditingController: anyOthersClausesCtrl,
              ),

              SizedBox(
                height: 20,
              ),
              CustomDropdown.search(
                hintText: 'Mode of Payment(Deposit Amount)',
                items: dropDownList.paymentModeList,
                controller: paymentModeListCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Rental Address : ${utilitiesDetails.rentalAddressSameAs}'),
              const SizedBox(height: 20,),







              Center(
                  child: SizedBox(
                    height: MySize.kScreenHeight * 0.052, // 52 / 360 = 0.1444
                    width: MySize.kScreenWidth, // 324 / 800 = 0.405,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFF0f172a),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            RightToLeftRoute(
                              page: const PaymentPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Continue',
                          style: TextStyle(fontSize: MySize.kHeading2),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
