import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_agreement/screens/home/payment.dart';
import 'package:rental_agreement/widgets/app_bar_widget.dart';
import 'package:rental_agreement/widgets/text_form_field_widgets.dart';

import '../../constants/right_to_left_screen.dart';
import '../../constants/size.dart';
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
  @override
  Widget build(BuildContext context) {
    final ownerDetailsProvider = Provider.of<OwnerDetailsProvider>(context);
    final ownerDetails = ownerDetailsProvider.ownerDetailsModel;

    final tenantDetailsProvider = Provider.of<TenantDetailsProvider>(context);
    final tenantDetails = tenantDetailsProvider.tenantDetailsModel;

    final propertyDetailsProvider = Provider.of<PropertyDetailsProvider>(context);
    final propertyDetails = propertyDetailsProvider.propertyDetailsModel;

    final utilitiesDetailsProvider = Provider.of<UtilitiesProvider>(context);
    final utilitiesDetails = utilitiesDetailsProvider.utilitiesModel;

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
              Text('Owner Details',style: TextStyle(fontSize: MySize.kHeading1),),
              const SizedBox(height: 20,),
              TextFormFieldWidgets(label: 'Name', validateMsg: '', textEditingController: ownerNameCtrl),
              TextFormFieldWidgets(label: 'Address 1', validateMsg: '', textEditingController: ownerAddress1Ctrl),
              TextFormFieldWidgets(label: 'Address 2', validateMsg: '', textEditingController: ownerAddress2Ctrl),
              TextFormFieldWidgets(label: 'Pin Code', validateMsg: '', textEditingController: ownerPinCodeCtrl),
              TextFormFieldWidgets(label: 'City', validateMsg: '', textEditingController: ownerCityDropdownCtrl),
              TextFormFieldWidgets(label: 'State', validateMsg: '', textEditingController: ownerStateDropdownCtrl),
              TextFormFieldWidgets(label: 'Pan', validateMsg: '', textEditingController: ownerPANCtrl),

              Text('Tenant Details',style: TextStyle(fontSize: MySize.kHeading1),),
              // Text('Name ${1}: ${tenantDetails.tenantName[0]}'),
              const SizedBox(height: 10,),
              Text('Address 1 : ${tenantDetails.tenantAddress1}'),
              const SizedBox(height: 10,),
              Text('Address 2: ${tenantDetails.tenantAddress2}'),
              const SizedBox(height: 10,),
              Text('City: ${tenantDetails.tenantCity}'),
              const SizedBox(height: 10,),
              Text('pin: ${tenantDetails.tenantPIN}'),
              const SizedBox(height: 10,),
              Text('State: ${tenantDetails.tenantState}'),
              const SizedBox(height: 10,),
              Text('Id type : ${tenantDetails.tenantID}'),
              const SizedBox(height: 10,),
              Text('Id no: ${tenantDetails.tenantIDNo}'),
              const SizedBox(height: 20,),

              Text('Property Details ',style: TextStyle(fontSize: MySize.kHeading1),),
              const SizedBox(height: 10,),
              Text('Date : ${propertyDetails.rentalStartDate}'),
              const SizedBox(height: 10,),
              Text('Rent Amount : ${propertyDetails.rentalAmount}'),
              const SizedBox(height: 10,),
              Text('Rent deposit : ${propertyDetails.rentalDeposit}'),
              const SizedBox(height: 10,),
              Text('Residence Type: ${propertyDetails.residence}'),
              const SizedBox(height: 10,),
              Text('Rental Address : ${propertyDetails.rentalAddressSameAs}'),
              const SizedBox(height: 20,),

              Text('Utilities ',style: TextStyle(fontSize: MySize.kHeading1),),
              const SizedBox(height: 20,),
              Text('Payment Date: ${utilitiesDetails.rentPaymentDate}'),
              const SizedBox(height: 10,),
              Text('Electricity/Water charge paid by : ${utilitiesDetails.billPayedBy}'),
              const SizedBox(height: 10,),
              Text('Minimum notice period : ${utilitiesDetails.noticePeriod}'),
              const SizedBox(height: 10,),
              Text('Rent increment : ${utilitiesDetails.rentIncrement}'),
              const SizedBox(height: 10,),
              Text('other clauses: ${utilitiesDetails.anyOtherClauses}'),
              const SizedBox(height: 10,),
              Text('Mode of Deposit payment : ${utilitiesDetails.modeOfPayment}'),
              const SizedBox(height: 10,),
              Text('Maintenance Amount Paid by: ${utilitiesDetails.maintenanceAmount}'),
              const SizedBox(height: 10,),
              Text('Minimum lock: ${utilitiesDetails.lock}'),
              const SizedBox(height: 10,),
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
