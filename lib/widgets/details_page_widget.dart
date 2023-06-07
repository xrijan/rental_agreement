import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_agreement/model/drope_down_list_model.dart';
import 'package:rental_agreement/widgets/text_form_field_widgets.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import '../constants/right_to_left_screen.dart';
import '../constants/size.dart';
import '../model/owner_details_model.dart';
import '../model/user_type.dart';
import '../provider/details_page_provider.dart';
import '../screens/home/utilities_page.dart';

class DetailsPageWidget extends StatefulWidget {
  late int current;
  DetailsPageWidget({Key? key, required this.current}) : super(key: key);

  @override
  State<DetailsPageWidget> createState() => _DetailsPageWidgetState();
}

class _DetailsPageWidgetState extends State<DetailsPageWidget> {
  final dropDownList = DropDownList();

  ///owner
  final _ownerFormKey = GlobalKey<FormState>();

  final stateDropdownCtrl = TextEditingController(),
      cityDropdownCtrl = TextEditingController();

  ///tenent
  final _tenentFormKey = GlobalKey<FormState>();
  final idDropdownCtrl = TextEditingController();

  ///property
  UserTypeRadio? userTypeRadio = UserTypeRadio.other;
  String newRentalDate = 'Select Rental Start Date';
  DateTime selectDate = DateTime.now();

  ///nameform
  final List<String> _names = [''];

  void _addName() {
    setState(() {
      _names.add('');
    });
  }

  @override
  void dispose() {
    stateDropdownCtrl.dispose();
    cityDropdownCtrl.dispose();
    idDropdownCtrl.dispose();
    super.dispose();
  }

  final ownerNameCtrl = TextEditingController();
  final ownerAddress1Ctrl = TextEditingController();
  final ownerAddress2Ctrl = TextEditingController();
  final ownerPinCodeCtrl = TextEditingController();
  final ownerStateDropdownCtrl = TextEditingController();
  final ownerCityDropdownCtrl = TextEditingController();
  final ownerPANCtrl = TextEditingController();

  final tenantAddress1Ctrl = TextEditingController();
  final tenantAddress2Ctrl = TextEditingController();
  final tenantCityDropdownCtrl = TextEditingController();
  final tenantPinCodeCtrl = TextEditingController();
  final tenantStateDropdownCtrl = TextEditingController();
  final tenantIdDropdownCtrl = TextEditingController();
  final tenantIdNoCtrl = TextEditingController();

  final propertyRentAmountCtrl = TextEditingController();
  final propertyRentDepositCtrl = TextEditingController();
  final propertyResidenceTypeDropdownCtrl = TextEditingController();
  final propertyAddress1Ctrl = TextEditingController();
  final propertyAddress2Ctrl = TextEditingController();
  final propertyCityDropdownCtrl = TextEditingController();
  final propertyPinCodeCtrl = TextEditingController();
  final propertyStateDropdownCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        /// CUSTOM TABBAR
        SizedBox(
          width: double.infinity,
          height: MySize.kScreenHeight / 16,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: dropDownList.items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.current = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.all(5),
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      color: widget.current == index
                          ? Colors.white70
                          : Colors.white54,
                      borderRadius: widget.current == index
                          ? BorderRadius.circular(15)
                          : BorderRadius.circular(10),
                      border: widget.current == index
                          ? Border.all(color: Colors.deepPurpleAccent, width: 2)
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        dropDownList.items[index],
                      ),
                    ),
                  ),
                );
              }),
        ),

        /// CUSTOM TABBAR component
        SizedBox(
          height: MySize.kSizeBoxHeight20,
        ),
        _buildCurrentWidget(),
      ],
    );
  }

  ///owner page
  Widget _buildOwnerWidget() {
    final ownerDetailsProvider = Provider.of<OwnerDetailsProvider>(context);
    final ownerDetails = ownerDetailsProvider.ownerDetailsModel;
    return Form(
      key: _ownerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Please fill the Owner details",
            style: TextStyle(fontSize: MySize.kHeading2),
          ),
           TextFormFieldWidgets(
            label: 'Name',
            validateMsg: 'Please Enter Your Name', textEditingController: ownerNameCtrl,
          ),
           TextFormFieldWidgets(
            label: 'Address line 1',
            validateMsg: 'Please Enter Your Address', textEditingController: ownerAddress1Ctrl,
          ),
           TextFormFieldWidgets(
            label: 'Address line 2',
            validateMsg: 'Please Enter Your Address', textEditingController: ownerAddress2Ctrl,
          ),
           TextFormFieldWidgets(
            label: 'Pin Code',
            validateMsg: 'Please Enter PinCode', textEditingController: ownerPinCodeCtrl,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CustomDropdown.search(
              hintText: 'City',
              items: dropDownList.cityList,
              controller: ownerCityDropdownCtrl,
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
          ),
          CustomDropdown.search(
            hintText: 'State',
            items: dropDownList.stateList,
            controller: ownerStateDropdownCtrl,
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          TextFormFieldWidgets(
            label: 'PAN no. (optional)',
            validateMsg: 'Please Enter PinCode', textEditingController: ownerPANCtrl,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF0f172a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () {
                    final newOwnerDetailsModel = OwnerDetailsModel(
                        ownerName: 'Rijan',
                        ownerAddress1: 'Bardibas',
                        ownerAddress2: 'Patu',
                        pinCode: '562106',
                        city: 'Mahottari',
                        state: 'Mithili',
                        pan: '4234jnjdn');
                    ownerDetailsProvider
                        .updateOwnerDetails(newOwnerDetailsModel);
                    setState(() {
                      if (widget.current < 2) {
                        widget.current++;
                      }
                    });
                  },
                  child: const Text('Next')),
            ),
          ),
        ],
      ),
    );
  }

  ///tenant page
  Widget _buildTenantWidget() {
    final ownerDetailsProvider = Provider.of<OwnerDetailsProvider>(context);
    final ownerDetails = ownerDetailsProvider.ownerDetailsModel;
    return Form(
      key: _tenentFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ownerDetails.ownerName),
          Text(ownerDetails.ownerAddress1),
          Text(ownerDetails.ownerAddress2),
          Text(ownerDetails.pinCode),
          Text(ownerDetails.city),
          Text(ownerDetails.state),
          Text(ownerDetails.pan),
          Text(
            "Please fill the Tenant details",
            style: TextStyle(fontSize: MySize.kHeading2),
          ),
          SizedBox(
            height: MySize.kSizeBoxHeight20,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: MySize.kTextFieldHeight,
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          // do nothing
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: IconButton(
                      onPressed: _addName,
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
              ..._names.asMap().entries.map((entry) {
                final index = entry.key;
                final name = entry.value;
                final isLast = index == _names.length;
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: MySize.kTextFieldHeight,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: isLast ? 'Name' : 'Name ${index + 1}',
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                              ),
                            ),
                            initialValue: name,
                            onChanged: (value) {
                              setState(() {
                                _names[index] = value;
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name is required';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: MySize.kTextFieldHeight,
                        width: MySize.kTextFieldHeight,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _names.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
           TextFormFieldWidgets(
            label: 'Address line 1',
            validateMsg: 'Please Enter Your Address', textEditingController: tenantAddress1Ctrl,
          ),
           TextFormFieldWidgets(
            label: 'Address line 2',
            validateMsg: 'Please Enter Your Address', textEditingController: tenantAddress2Ctrl,
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
                  height: MySize.kTextFieldHeight,
                  child: const TextField(
                    decoration: InputDecoration(
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
            validateMsg: 'Please enter your id number  Tenant 1', textEditingController: tenantIdNoCtrl,
          ),
          SizedBox(
            height: MySize.kSizeBoxHeight20,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF0f172a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () {
                    setState(() {
                      if (widget.current < 2) {
                        widget.current++;
                      }
                    });
                  },
                  child: const Text('Next')),
            ),
          ),
        ],
      ),
    );
  }

  ///property page
  Widget _buildPropertyWidget() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Please fill the Property details",
            style: TextStyle(fontSize: MySize.kHeading2),
          ),
          SizedBox(
            height: MySize.kSizeBoxHeight20,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () async {
                  final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000));

                  if (dateTime != null) {
                    setState(() {
                      newRentalDate =
                          '${dateTime.year}/${dateTime.month}/${dateTime.day}';
                    });
                  }
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  height: 60,
                  width: MySize.kScreenWidth / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Text(newRentalDate),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 60,
                width: MySize.kScreenWidth / 2.4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: const Text('Rental Period : 11 mon'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: MySize.kScreenWidth / 2.4,
                  child:  TextFormFieldWidgets(
                      label: 'Rent Amount', validateMsg: 'Rental Start Date', textEditingController: propertyRentAmountCtrl,)),
              SizedBox(
                  width: MySize.kScreenWidth / 2.4,
                  child:  TextFormFieldWidgets(
                      label: 'Rent Deposit', validateMsg: 'Rental Start Date', textEditingController: propertyRentDepositCtrl,)),
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
            validateMsg: 'Please Enter Your Address', textEditingController: propertyAddress1Ctrl,
          ),
         TextFormFieldWidgets(
            label: 'Address line 2',
            validateMsg: 'Please Enter Your Address', textEditingController: propertyAddress2Ctrl,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: CustomDropdown.search(
                    hintText: 'City',
                    items: dropDownList.cityList,
                    controller: cityDropdownCtrl,
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MySize.kScreenWidth / 2.8,
                  height: MySize.kScreenHeight * 0.05,
                  child: const TextField(
                    decoration: InputDecoration(
                        labelText: 'PIN', border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
          ),
          CustomDropdown.search(
            hintText: 'State',
            items: dropDownList.stateList,
            controller: stateDropdownCtrl,
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          SizedBox(
            height: MySize.kSizeBoxHeight20,
            width: double.infinity,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
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
                      page: const UtilitiesPage(),
                    ),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: MySize.kHeading2),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentWidget() {
    switch (widget.current) {
      case 0:
        return _buildOwnerWidget();
      case 1:
        return _buildTenantWidget();
      case 2:
        return _buildPropertyWidget();
      default:
        return Container();
    }
  }
}
