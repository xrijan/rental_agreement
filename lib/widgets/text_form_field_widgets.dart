import 'package:flutter/material.dart';
import '../constants/colors.dart';



class TextFormFieldWidgets extends StatefulWidget {
  final String label;
  final String validateMsg;
  final TextEditingController textEditingController;
  final void Function(String?)? onSaved;
  const TextFormFieldWidgets(
      {Key? key, required this.label, required this.validateMsg, this.onSaved, required this.textEditingController})
      : super(key: key);
  @override
  State<TextFormFieldWidgets> createState() => _TextFormFieldWidgetsState();
}

class _TextFormFieldWidgetsState extends State<TextFormFieldWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 45,
        child: TextField(
          cursorColor: MyColors.kSecondaryTextColor,
          controller: widget.textEditingController,
          decoration: InputDecoration(
            labelText: widget.label,
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
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.kSecondaryTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
