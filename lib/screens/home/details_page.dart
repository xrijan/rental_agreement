import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:rental_agreement/screens/home/utilities_page.dart';
import '../../constants/colors.dart';
import '../../constants/right_to_left_screen.dart';
import '../../constants/size.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/text_form_field_widgets.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  int current = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// APPBAR
      appBar: AppBarWidget(
        title: 'Details',
        onPressed: () {
          if (current > 0) {
            setState(() {
              current--;
            });
          } else {
            Navigator.pop(context);
          }
        },
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: DetailsPageWidget(current: current,),
      ),
    );
  }
}


class DetailsPageWidget extends StatefulWidget {
   late int current ;
   DetailsPageWidget({Key? key, required this.current}) : super(key: key);

  @override
  State<DetailsPageWidget> createState() => _DetailsPageWidgetState();
}

class _DetailsPageWidgetState extends State<DetailsPageWidget> {
  /// List of Tab Bar Item
  List<String> items = [
    "Owner",
    "Tenant",
    "Property",
  ];


  ///owner
  final _ownerFormKey = GlobalKey<FormState>();
  final List<String> stateList = [
    'Andhra Pradesh',
    'Rajasthan',
    'Kerala',
    'Bihar'
  ];

  final stateDropdownCtrl = TextEditingController(),
      cityDropdownCtrl = TextEditingController();
  final List<String> cityList = ['Mumbai', 'Pune', 'Bengaluru', 'Hyderabad'];

  ///tenent
  final _tenentFormKey = GlobalKey<FormState>();
  final idDropdownCtrl = TextEditingController();
  final List<String> idList = [
    'Passport',
    'Driving License',
    'Adhar Card',
    'PAN Card'
  ];

  ///property
  UserTypeRadio? userTypeRadio = UserTypeRadio.other;
  final List<String> residenceTypeList = ['1BHK', 'Duplex', 'Flat', 'Home'];
  final residenceTypeDropdownCtrl = TextEditingController();
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
    residenceTypeDropdownCtrl.dispose();
    super.dispose();
  }

  ///owner page
  Widget _buildOwnerWidget() {
    return Form(
      key: _ownerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Please fill the Owner details",
            style: TextStyle(fontSize: MySize.kHeading2),
          ),
          const TextFormFieldWidgets(
            label: 'Name',
            validateMsg: 'Please Enter Your Name',
          ),
          const TextFormFieldWidgets(
            label: 'Address line 1',
            validateMsg: 'Please Enter Your Address',
          ),
          const TextFormFieldWidgets(
            label: 'Address line 2',
            validateMsg: 'Please Enter Your Address',
          ),
          const TextFormFieldWidgets(
            label: 'Pin Code',
            validateMsg: 'Please Enter PinCode',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CustomDropdown.search(
              hintText: 'City',
              items: cityList,
              controller: cityDropdownCtrl,
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
          ),
          CustomDropdown.search(
            hintText: 'State',
            items: stateList,
            controller: stateDropdownCtrl,
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'PAN no. (optional)',
                  border: OutlineInputBorder()),
            ),
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: MySize.kScreenWidth / 2,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors
                        .kSecondaryTextColor, // background (button) color
                    foregroundColor: Colors.white, // foreground (text) color
                  ),
                  onPressed: () {

                    if (_ownerFormKey.currentState!.validate()) {
                      _ownerFormKey.currentState!.save(); // Save the form data
                      // Do something with the form data (e.g. send it to a server)
                      setState(() {
                        if (widget.current < 2) {
                          widget.current++;
                        }

                        // if (widget.current == 2) {
                        //   if (kDebugMode) {
                        //     print('Move to utilities Page');
                        //   }
                        // }
                      });
                    }
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
    return Form(
      key: _tenentFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      child: TextFormField(
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
                        validator: (value) {
                          return null;
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: MySize.kTextFieldHeight,
                    width: MySize.kTextFieldHeight,
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
          const TextFormFieldWidgets(
            label: 'Address line 1',
            validateMsg: 'Please Enter Your Address',
          ),
          const TextFormFieldWidgets(
            label: 'Address line 2',
            validateMsg: 'Please Enter Your Address',
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
            items: stateList,
            controller: stateDropdownCtrl,
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDropdown.search(
              hintText: 'Select ID proof',
              items: idList,
              controller: idDropdownCtrl,
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
          ),
          const TextFormFieldWidgets(
            label: 'ID NO.',
            validateMsg: 'Please enter your id number  Tenant 1',
          ),
          SizedBox(
            height: MySize.kSizeBoxHeight20,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: MySize.kScreenWidth / 2,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    MyColors.kSecondaryTextColor, // background (button) color
                    foregroundColor: Colors.white, // foreground (text) color
                  ),
                  onPressed: () {
                    if (_tenentFormKey.currentState!.validate()) {
                      _tenentFormKey.currentState!.save(); // Save the form data
                      // Do something with the form data (e.g. send it to a server)
                      setState(() {
                        if (widget.current < 2) {
                          widget.current++;
                        }

                        // if (widget.current == 2) {
                        //   if (kDebugMode) {
                        //     print('Move to utilities Page');
                        //   }
                        // }
                      });
                    }
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
          SizedBox(height: MySize.kSizeBoxHeight20,width: double.infinity,),
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

                  if(dateTime != null){
                    setState(() {
                      newRentalDate = '${dateTime.year}/${dateTime.month}/${dateTime.day}';
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  height: 60,
                  width: MySize.kScreenWidth/2.4,
                  decoration:  BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child:  Text(newRentalDate),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                height: 60,
                width: MySize.kScreenWidth/2.4,
                decoration:  BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child:  const Text('Rental Period : 11 mon'),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: MySize.kScreenWidth / 2.4,
                  child: const TextFormFieldWidgets(
                      label: 'Rent Amount', validateMsg: 'Rental Start Date')),
              SizedBox(
                  width: MySize.kScreenWidth / 2.4,
                  child: const TextFormFieldWidgets(
                      label: 'Rent Deposit', validateMsg: 'Rental Start Date')),
            ],),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 180,
              child: CustomDropdown.search(
                hintText: 'Residence Type',
                items: residenceTypeList,
                controller: residenceTypeDropdownCtrl,
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
          const TextFormFieldWidgets(
            label: 'Address line 1',
            validateMsg: 'Please Enter Your Address',
          ),
          const TextFormFieldWidgets(
            label: 'Address line 2',
            validateMsg: 'Please Enter Your Address',
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
            items: stateList,
            controller: stateDropdownCtrl,
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          SizedBox(
            height: MySize.kSizeBoxHeight20,
            width: double.infinity,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: MySize.kScreenWidth / 2,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors
                        .kSecondaryTextColor, // background (button) color
                    foregroundColor: Colors.white, // foreground (text) color
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      RightToLeftRoute(
                        page: const UtilitiesPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: MySize.kHeading2),
                  )),
            ),
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
              itemCount: items.length,
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
                          ? Border.all(
                          color: Colors.deepPurpleAccent, width: 2)
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        items[index],
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
}
