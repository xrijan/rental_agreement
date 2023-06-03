import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rental_agreement/screens/verification_screen.dart';
import '../constants/colors.dart';
import '../constants/right_to_left_screen.dart';
import '../constants/size.dart';
import '../widgets/elevated_button_widget.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({Key? key}) : super(key: key);

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final TextEditingController controller = TextEditingController();
  int current = 0;
  Widget _buildAuthWidget() {
    switch (current) {
      case 0:
        ///for signup
        return FadeInUp(
          duration: const Duration(milliseconds: 400),
          child: Column(
            children: [
              FadeInUp(
                duration: const Duration(milliseconds: 400),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffeeeeee),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: "Name",
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
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET, // Set initial country code to India (IN)
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      textFieldController: controller,
                      formatInput: false,
                      maxLength: 10,
                      keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                      cursorColor: Colors.black,
                      inputDecoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                      ),
                      onSaved: (PhoneNumber number) {
                        // print('On Saved: $number');
                      },
                      onInputChanged: (PhoneNumber number) {
                        // print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        // print(value);
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
            ],
          ),
        );
      case 1:
        ///for login
        return FadeInUp(
          duration: const Duration(milliseconds: 400),
          child: Container(
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
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  textFieldController: controller,
                  formatInput: false,
                  maxLength: 10,
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
                  onInputChanged: (PhoneNumber number) {
                    // print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    // print(value);
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
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'assets/temp_logo.png',
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const ImageIcon(
                          AssetImage('assets/icons/cross-small.png'))),
                ],
              ),
              Center(
                  child: Image.asset(
                'assets/login-bg.png',
                height: MySize.kScreenHeight * 0.12,
              )),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        current = 0;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.all(5),
                      width: MySize.kScreenWidth / 2.8,
                      height: MySize.kScreenHeight / 18,
                      decoration: BoxDecoration(
                        color: current == 0 ? Colors.white70 : Colors.grey.shade100,
                        borderRadius: current == 0
                            ? BorderRadius.circular(15)
                            : BorderRadius.circular(10),
                        border: current == 0
                            ? Border.all(color: Colors.deepPurpleAccent, width: 2)
                            : null,
                      ),
                      child: Center(
                          child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: MySize.kHeading2),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        current = 1;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.all(5),
                      width: MySize.kScreenWidth / 2.8,
                      height: MySize.kScreenHeight / 18,
                      decoration: BoxDecoration(
                        color: current == 1 ? Colors.white70 : Colors.grey.shade200,
                        borderRadius: current == 0
                            ? BorderRadius.circular(15)
                            : BorderRadius.circular(10),
                        border: current == 1
                            ? Border.all(color: Colors.deepPurpleAccent, width: 2)
                            : null,
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: MySize.kHeading2),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
                width: double.infinity,
              ),
              _buildAuthWidget(),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
                width: double.infinity,
              ),
              Center(
                child: ElevatedButtonWidget(
                  height: MySize.kScreenHeight * 0.05,
                  width: MySize.kScreenWidth / 2,
                  title: 'Request OTP',
                  onPressed: () {
                    Navigator.push(
                      context,
                      RightToLeftRoute(
                        page: const Verification(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MySize.kSizeBoxHeight10,
                width: double.infinity,
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    const TextSpan(text: 'I agree to the '),
                    TextSpan(
                      text: 'Terms of Use',
                      style: const TextStyle(
                        color: MyColors.kSecondaryTextColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to the Terms of Use screen
                        },
                    ),
                    const TextSpan(text: ' and acknowledge I have read the '),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: const TextStyle(
                        color: MyColors.kSecondaryTextColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to the Privacy Policy screen
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
