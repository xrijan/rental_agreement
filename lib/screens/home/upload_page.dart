import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rental_agreement/widgets/app_bar_widget.dart';
import '../../constants/size.dart';
import '../../widgets/text_form_field_widgets.dart';


class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
   String newDate = 'Select Rental Date';
   DateTime selectDate = DateTime.now();

   final uploadRentAmountCtrl = TextEditingController();
   final uploadDeliveryAddressCtrl = TextEditingController();
   final uploadPhoneNumberCtrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Upload', onPressed: () { Navigator.pop(context); },),
      body: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Column(
            children:  [
              const AttachFilesWidgets(),
               TextFormFieldWidgets(
                  label: 'New Rent Amount',
                  validateMsg: 'Please Enter the rent amount', textEditingController: uploadRentAmountCtrl,),
              SizedBox(height: MySize.kSizeBoxHeight20,
                width: double.infinity,
              ),
              InkWell(
                onTap: () async {
                  final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000));

                  if(dateTime != null){
                    setState(() {
                      newDate = '${dateTime.year}/${dateTime.month}/${dateTime.day}';
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  height: 50,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child:  Text(newDate),
                ),
              ),
               TextFormFieldWidgets(
                  label: 'Delivery Address',
                  validateMsg: 'Please Enter Delivery Address', textEditingController: uploadDeliveryAddressCtrl,),
               TextFormFieldWidgets(
                  label: 'Phone Number',
                  validateMsg: 'Please Enter Phone Number', textEditingController: uploadPhoneNumberCtrl,),
              SizedBox(height: MySize.kSizeBoxHeight20,
                width: double.infinity,
              ),
              Center(
                  child: SizedBox(
                    height: 50, // 52 / 360 = 0.1444
                     width: MySize.kScreenWidth, // 324 / 800 = 0.405,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF0f172a),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        onPressed: () {

                        },
                        child: Text(
                          'Upload',
                          style: TextStyle(fontSize: MySize.kHeading2),
                        )),)),
            ],
          ),
        ),
      ),
    );
  }
}

class AttachFilesWidgets extends StatelessWidget {
  const AttachFilesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffDDDDDD),
            blurRadius: 6.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Upload and attach files",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            DottedBorder(
              color: Colors.black,
              strokeWidth: 1,
              radius: const Radius.circular(10),
              child: Container(
                color: const Color(0xFFD4FAFC),
                height: MySize.kScreenHeight * 0.10,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: MySize.kScreenHeight * 0.05,
                        child: Image.asset('assets/icons/image.png')),
                    const Text(
                      "Click to Upload",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 8,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const Text(
                      "File Should Be less then 25MB",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 8,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MySize.kSizeBoxHeight10,
            ),
            Container(
              height: MySize.kScreenHeight * 0.05,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: MySize.kScreenHeight * 0.025,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(2)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset('assets/icons/file.png'),
                          )),
                      const Text(
                        'Prototype recording 01.mp4',
                        style: TextStyle(fontSize: 12),
                      ),
                      //  SizedBox(
                      //   width: MyConstants.kScreenWidth/6,
                      // ),
                      IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AssetImage('assets/icons/cross-small.png'),
                            size: 20,
                          ))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
