import 'package:flutter/material.dart';

import 'login_bottom_sheet.dart';

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
           child: SafeArea(
             child: Column(
               children: [
                 Builder(
                     builder: (context) {
                       return SizedBox(
                           height: 60,
                           width: 200,
                           child: ElevatedButton(
                               onPressed: () {
                                 showBottomSheet(
                                     context: context,
                                     builder: (context) {
                                       return const LoginBottomSheet();
                                     });
                               },
                               child: const Text('Continue')));
                     }
                 ),
               ],
             ),
           ),
         ),
    );
  }
}
