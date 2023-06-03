
import 'package:flutter/material.dart';
import 'package:rental_agreement/widgets/elevated_button_widget.dart';
import '../../constants/colors.dart';
import '../../constants/size.dart';
import '../../widgets/text_form_field_widgets.dart';

class HelpCenterWidget extends StatefulWidget {
  const HelpCenterWidget({
    super.key,
  });

  @override
  State<HelpCenterWidget> createState() => _HelpCenterWidgetState();
}

class _HelpCenterWidgetState extends State<HelpCenterWidget> {
  String _dropdownValue = "Address";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Get in touch',
              style: TextStyle(fontSize: MySize.kHeading1),
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(10.0), // Adjust the value as needed
                border: Border.all(color: Colors.grey),
              ),
              child: DropdownButton(
                underline: Container(),
                items: [
                  DropdownMenuItem(
                      value: "Address",
                      child: Row(
                        children: const [
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Address"),
                        ],
                      )),
                  DropdownMenuItem(
                      value: "Phone",
                      child: Row(
                        children: const [
                          Icon(Icons.phone),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Phone"),
                        ],
                      )),
                  DropdownMenuItem(
                      value: "Email",
                      child: Row(
                        children: const [
                          Icon(Icons.email),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Email"),
                        ],
                      )),
                ],
                value: _dropdownValue,
                onChanged: (selectedValue) {
                  if (selectedValue is String) {
                    setState(() {
                      _dropdownValue = selectedValue;
                    });
                  }
                },
              ),
            ),
          ],
        ),
        const TextFormFieldWidgets(
            label: 'Name', validateMsg: 'Name is required'),
        const TextFormFieldWidgets(
            label: 'Email', validateMsg: 'Email is required'),
        SizedBox(
          height: MySize.kSizeBoxHeight20,
        ),
        Text(
          'Message',
          style: TextStyle(fontSize: MySize.kHeading2),
        ),
        SizedBox(
          height: MySize.kSizeBoxHeight10,
        ),
        TextField(
          maxLength: 100,
          maxLines: 8,
          cursorColor: MyColors.kSecondaryTextColor,
          decoration: InputDecoration(
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
            focusedBorder:  const OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.kSecondaryTextColor,
              ),
            ),
          ),
        ),
        Center(child: ElevatedButtonWidget(height: 50, width: MySize.kScreenWidth/2, title: 'Done', onPressed: (){}))
      ],
    );
  }
}