import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:rental_agreement/screens/main_page.dart';
import '../../constants/right_to_left_screen.dart';
import '../../constants/size.dart';

class Verification extends StatefulWidget {
  const Verification({ Key? key }) : super(key: key);

  @override
  VerificationState createState() => VerificationState();
}

class VerificationState extends State<Verification> {
  bool _isResendAgain = false;
  bool _isVerified = false;
  bool _isLoading = false;

  String _code = '';

  late Timer _timer;
  int _start = 60;
  int _currentIndex = 0;

  void resend() {
    setState(() {
      _isResendAgain = true;
    });

    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_start == 0) {
          _start = 60;
          _isResendAgain = false;
          timer.cancel();
        } else {
          _start--;
        }
      });
    });
  }

  verify() {
    setState(() {
      _isLoading = true;
      Navigator.push(
        context,
        RightToLeftRoute(
          page: const MainPage(),
        ),
      );
    }
    );

    const oneSec = Duration(milliseconds: 2000);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        _isLoading = false;
        _isVerified = true;
      });
    });
  }

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        _currentIndex++;

        if (_currentIndex == 3) {
          _currentIndex = 0;
        }
      });
    });

    super.initState();
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
          children: [
            Text("Verification", style: TextStyle(fontSize: MySize.kHeading1, fontWeight: FontWeight.bold,color: Colors.white),),
            const SizedBox(height: 10,),

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MySize.kSizeBoxHeight10,
                      width: double.infinity,
                    ),
                    Text("Please enter the 4 digit code sent to \n +93 706-399-999",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade500, height: 1.5),),
                    const SizedBox(height: 30,),

                    // Verification Code Input
                    VerificationCode(
                      length: 4,
                      textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                      underlineColor: Colors.black,
                      keyboardType: TextInputType.number,
                      underlineUnfocusedColor: Colors.black,
                      onCompleted: (value) {
                        setState(() {
                          _code = value;
                        });
                      },
                      onEditing: (value) {},
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't receive the OTP?", style: TextStyle(fontSize: 14, color: Colors.grey.shade500),),
                        TextButton(
                            onPressed: () {
                              if (_isResendAgain) return;
                              resend();
                            },
                            child: Text(_isResendAgain ? "Try again in $_start" : "Resend", style: const TextStyle(color: Colors.blueAccent),)
                        )
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Center(
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
                                  Navigator.pushNamed(context, '/main');
                                },
                                child: Text(
                                  'Continue',
                                  style: TextStyle(fontSize: MySize.kHeading2),
                                )),)),
                    ),
                    const SizedBox(height: 50,),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
