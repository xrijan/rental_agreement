import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rental_agreement/utilities.dart';
import 'package:rental_agreement/widgets/elevated_button_widget.dart';
import '../../constants/colors.dart';
import '../../constants/right_to_left_screen.dart';
import '../../constants/size.dart';
import '../../constants/validation.dart';
import 'details_page.dart';


class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  String userTypeValue = '';
  String emailValue = '';

  final List<String> stateList = [
    'Andhra Pradesh',
    'Rajasthan',
    'Kerala',
    'Bihar'
  ];
  final List<String> cityList = ['Mumbai', 'Pune', 'Bengaluru', 'Hyderabad'];
  final stateDropdownCtrl = TextEditingController(),
      cityDropdownCtrl = TextEditingController();

  final emailCtrl = TextEditingController();
  final phoneNumberCtrl = TextEditingController();


  @override
  void dispose() {
    stateDropdownCtrl.dispose();
    cityDropdownCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const ImageIcon(
            AssetImage('assets/icons/angle-left.png'),
            color: Colors.black,
            size: 24,
          ),
        ),
        title: const Text(
          'Create',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I am',
                style: TextStyle(fontSize: MySize.kHeading2),
              ),
              const SizedBox(
                height: 10,
              ),
              UserTypeForCreate(
                onUserTypeSelected: (value) {
                  setState(() {
                    userTypeValue = value;
                  });
                  if (kDebugMode) {
                    print(value);
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'User Details',
                style: TextStyle(fontSize: MySize.kHeading2),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: MyColors.kSecondaryTextColor,
                controller: emailCtrl,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: const TextStyle(
                    color: Colors.black, // set label color to red
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: MySize.kSizeBoxHeight10,
                 width: double.infinity,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.13),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffeeeeee),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    InternationalPhoneNumberInput(
                      initialValue: PhoneNumber(isoCode: 'IN'),
                      onInputChanged: (PhoneNumber number) {
                        // print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        // print(value);
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      textFieldController: phoneNumberCtrl,
                      formatInput: false,
                      maxLength: 12,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      cursorColor: Colors.black,
                      inputDecoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 16),
                      ),
                      onSaved: (PhoneNumber number) {
                        // print('On Saved: $number');
                      },
                    ),
                    Positioned(
                      left: 90,
                      top: 8,
                      bottom: 8,
                      child: Container(
                        height: 40,
                        width: 1,
                        color: Colors.black.withOpacity(0.13),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('State where property is located.'),
              const SizedBox(
                height: 10,
              ),
              CustomDropdown.search(
                hintText: 'State',
                items: stateList,
                controller: stateDropdownCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                onChanged: (value) {
                  if (kDebugMode) {
                    print(value);
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('City where property is located'),
              const SizedBox(
                height: 10,
              ),
              CustomDropdown.search(
                hintText: 'City',
                items: cityList,
                controller: cityDropdownCtrl,
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                onChanged: (value) {
                  if (kDebugMode) {
                    print(value);
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF0f172a),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  onPressed: (){
                    if(!Validator().userTypeValidation(userTypeValue, context)){
                      SnackBarUtil.showSnackBar(context, 'Invalid User name');
                    } else if(!Validator().validateEmail(emailCtrl.text)){
                      SnackBarUtil.showSnackBar(context, 'Invalid Email');
                    }
                    else {
                      print(userTypeValue);
                      print(emailCtrl.text);
                      Navigator.push(
                        context,
                        RightToLeftRoute(
                          page: const DetailsPage(),
                        ),
                      );
                    }
                  },
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: MySize.kHeading2),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserTypeForCreate extends StatefulWidget {
  final Function(String) onUserTypeSelected;
  const UserTypeForCreate({Key? key, required this.onUserTypeSelected,}) : super(key: key);

  @override
  State<UserTypeForCreate> createState() => _UserTypeForCreateState();
}

class _UserTypeForCreateState extends State<UserTypeForCreate> {
  String _selectedUserType = "";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InputChip(
          label: SizedBox(
              height: MySize.kScreenHeight * 0.035,
              width: MySize.kScreenWidth * 0.15,
              child: const Center(child: Text('Owner'))),
          selected:
          _selectedUserType == "Owner", // Set the initial selection state of the chip
          selectedColor: Colors.blue,
          showCheckmark: false,
          onSelected: (bool selected) {
            setState(() {
              _selectedUserType = "Owner"; // set selected user type
              widget.onUserTypeSelected(_selectedUserType);
            });
          },
        ),
        InputChip(
          label: SizedBox(
              height: MySize.kScreenHeight * 0.035,
              width: MySize.kScreenWidth * 0.15,
              child: const Center(child: Text('Tenant'))),
          selected:_selectedUserType == "Tenant", // Set the initial selection state of the chip
          selectedColor: Colors.blue,
          showCheckmark: false,
          onSelected: (bool selected) {
            setState(() {
              _selectedUserType = "Tenant"; // set selected user type
              widget.onUserTypeSelected(_selectedUserType);
            });
          },
        ),
        InputChip(
          label: SizedBox(
              height: MySize.kScreenHeight * 0.035,
              width: MySize.kScreenWidth * 0.15,
              child: const Center(child: Text('Agent'))),
          selected:_selectedUserType == "Agent", // Set the initial selection state of the chip
          selectedColor: Colors.blue,
          showCheckmark: false,
          onSelected: (bool selected) {
            setState(() {
              _selectedUserType = "Agent"; // set selected user type
              widget.onUserTypeSelected(_selectedUserType);
              // Toggle the selection state of the chip
            });
          },
        ),
      ],
    );
  }
}
