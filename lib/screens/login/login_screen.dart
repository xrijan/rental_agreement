import 'package:flutter/material.dart';
import 'package:rental_agreement/constants/size.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final phoneNumberCtrl = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phoneNumberCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0f172a),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage('assets/icons/angle-left.png'),
            size: 30,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0XFF0f172a),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset('assets/test.png',height: 150,width: 150,)),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Login with phone number',
              style: TextStyle(fontSize: MySize.kHeading1, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                // Replace with your desired background color
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MySize.kSizeBoxHeight10,
                      width: double.infinity,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: MySize.kHeading2),
                    ),
                    SizedBox(
                      height: MySize.kSizeBoxHeight10,
                      width: double.infinity,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
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
                              selectorType: PhoneInputSelectorType
                                  .BOTTOM_SHEET, // Set initial country code to India (IN)
                            ),
                            ignoreBlank: false,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle:
                                const TextStyle(color: Colors.black),
                            textFieldController: phoneNumberCtrl,
                            formatInput: false,
                            keyboardType: const TextInputType.numberWithOptions(
                                signed: true, decimal: true),
                            cursorColor: Colors.black,
                            inputDecoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(bottom: 15, left: 0),
                              border: InputBorder.none,
                              hintText: 'eg . 3753465734',
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 16),
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
                    const Spacer(),
                    Center(
                        child: SizedBox(
                            height: MySize.kScreenHeight *
                                0.052, // 52 / 360 = 0.1444
                            width: MySize.kScreenWidth, // 324 / 800 = 0.405,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0XFF0f172a),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    )),
                                onPressed: () {
                                       Navigator.pushNamed(context, '/');
                                },
                                child: Text(
                                  'Continue',
                                  style: TextStyle(fontSize: MySize.kHeading2),
                                )),)),
                    const SizedBox(height: 10,),
                    Center(
                      child: Text(
                        'By Continuing you will agree our all terms and condition',
                        style: TextStyle(fontSize: MySize.kHeading3,color: Colors.black54),
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
