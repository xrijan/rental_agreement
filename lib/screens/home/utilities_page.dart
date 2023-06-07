import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_agreement/model/utilities_model.dart';
import 'package:rental_agreement/provider/utilities_page_provideer.dart';
import 'package:rental_agreement/screens/home/defult_utilities.dart';
import 'package:rental_agreement/screens/home/payment.dart';
import 'package:rental_agreement/screens/home/review_page.dart';
import 'package:rental_agreement/widgets/app_bar_widget.dart';
import '../../constants/right_to_left_screen.dart';
import '../../constants/size.dart';
import '../../model/drope_down_list_model.dart';
import '../../model/user_type.dart';
import '../../widgets/text_form_field_widgets.dart';

class UtilitiesPage extends StatefulWidget {
  const UtilitiesPage({Key? key}) : super(key: key);

  @override
  State<UtilitiesPage> createState() => _UtilitiesPageState();
}

class _UtilitiesPageState extends State<UtilitiesPage> {
  final DropDownList dropDownList = DropDownList();

  final electricityWaterBillPayCtrl = TextEditingController();
  final minimumLockListCtrl = TextEditingController();
  final minimumNoticeListCtrl = TextEditingController();
  final rentalIncrementListCtrl = TextEditingController();
  final paymentModeListCtrl = TextEditingController();
  final additionalUtilitiesCtrl = TextEditingController();
  final rentPaymentDateCtrl = TextEditingController();
  final anyOthersClausesCtrl = TextEditingController();
  final monthlyMaintenanceAmountCtrl = TextEditingController();

  @override
  void dispose() {
    electricityWaterBillPayCtrl.dispose();
    minimumNoticeListCtrl.dispose();
    minimumLockListCtrl.dispose();
    rentalIncrementListCtrl.dispose();
    paymentModeListCtrl.dispose();
    super.dispose();
  }

  Widget _buildIdBox() {
    String value = paymentModeListCtrl.text;
    if (value == 'cheque') {
      const Text('Hi');
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    final utilitiesProvider = Provider.of<UtilitiesProvider>(context);
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Utilities',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Add Utilities and Clauses'),
              TextFormFieldWidgets(
                label: 'Utilities',
                validateMsg: 'Please enter additional utilities',
                textEditingController: additionalUtilitiesCtrl,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      RightToLeftRoute(
                        page: const ProductPage(),
                      ),
                    );
                  },
                  child: const Text("Click here to view default utilities")),
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
                height: MySize.kSizeBoxHeight20,
              ),
              CustomDropdown.search(
                hintText: 'Minimum notice period in months',
                items: dropDownList.minimumNoticeList,
                controller: minimumNoticeListCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
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
                height: MySize.kSizeBoxHeight20,
              ),
              CustomDropdown.search(
                hintText: 'Mode of Payment(Deposit Amount)',
                items: dropDownList.paymentModeList,
                controller: paymentModeListCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              _buildIdBox(),
              TextFormFieldWidgets(
                label: 'Monthly maintenance amount to be paid by',
                validateMsg: 'please enter',
                textEditingController: anyOthersClausesCtrl,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: CustomDropdown.search(
                  hintText: 'Minimum Lock in(months)',
                  items: dropDownList.minimumLockList,
                  controller: minimumLockListCtrl,
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              const DeliveryAddressWidget(),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
              ),
              Center(
                  child: SizedBox(
                height: MySize.kScreenHeight * 0.052, // 52 / 360 = 0.1444
                width: MySize.kScreenWidth, // 324 / 800 = 0.405,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF0f172a),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    onPressed: () {
                      final newUtilitiesModel = UtilitiesModel(
                          rentPaymentDate: rentPaymentDateCtrl.text,
                          billPayedBy: electricityWaterBillPayCtrl.text,
                          noticePeriod: minimumNoticeListCtrl.text,
                          rentIncrement: rentalIncrementListCtrl.text,
                          anyOtherClauses: anyOthersClausesCtrl.text,
                          modeOfPayment: paymentModeListCtrl.text,
                          maintenanceAmount: monthlyMaintenanceAmountCtrl.text,
                          lock: minimumLockListCtrl.text,
                          rentalAddressSameAs: '',
                          address1: '',
                          address2: '',
                          city: '',
                          pinCode: '',
                          state: '');

                      utilitiesProvider.updateUtilitiesModel(newUtilitiesModel);

                      print(paymentModeListCtrl.text);
                      Navigator.push(
                        context,
                        RightToLeftRoute(
                          page: const ReviewPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: MySize.kHeading2),
                    )),
              )),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeliveryAddressWidget extends StatefulWidget {
  const DeliveryAddressWidget({Key? key}) : super(key: key);

  @override
  State<DeliveryAddressWidget> createState() => _DeliveryAddressWidgetState();
}

class _DeliveryAddressWidgetState extends State<DeliveryAddressWidget> {
  UserTypeRadio? userTypeRadio = UserTypeRadio.other;
  final List<String> stateList = [
    'Andhra Pradesh',
    'Rajasthan',
    'Kerala',
    'Bihar'
  ];
  final List<String> cityList = ['Mumbai', 'Pune', 'Bengaluru', 'Hyderabad'];

  final stateDropdownCtrl = TextEditingController(),
      cityDropdownCtrl = TextEditingController();

  @override
  void dispose() {
    stateDropdownCtrl.dispose();
    cityDropdownCtrl.dispose();
    super.dispose();
  }

  final utilitiesAddress1Ctrl = TextEditingController();
  final utilitiesAddress2Ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text('Rental address same as?'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Radio(
                      value: UserTypeRadio.owner,
                      groupValue: userTypeRadio,
                      onChanged: (UserTypeRadio? value) {
                        setState(() {
                          userTypeRadio = value;
                        });
                      }),
                  const Text('Owner')
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: UserTypeRadio.tenant,
                      groupValue: userTypeRadio,
                      onChanged: (UserTypeRadio? value) {
                        setState(() {
                          userTypeRadio = value;
                        });
                      }),
                  const Text('Tenant')
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: UserTypeRadio.other,
                      groupValue: userTypeRadio,
                      onChanged: (UserTypeRadio? value) {
                        setState(() {
                          userTypeRadio = value;
                        });
                      }),
                  const Text('Other')
                ],
              ),
            ],
          ),
        ),
        TextFormFieldWidgets(
          label: 'Address line 1',
          validateMsg: 'Please Enter Your Address',
          textEditingController: utilitiesAddress1Ctrl,
        ),
        TextFormFieldWidgets(
          label: 'Address line 2',
          validateMsg: 'Please Enter Your Address',
          textEditingController: utilitiesAddress2Ctrl,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: CustomDropdown.search(
                  hintText: 'City',
                  items: cityList,
                  controller: cityDropdownCtrl,
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 120,
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'PIN', border: OutlineInputBorder()),
                ),
              )
            ],
          ),
        ),
        CustomDropdown.search(
          hintText: 'State',
          items: stateList,
          controller: stateDropdownCtrl,
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
      ],
    );
  }
}
