import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../constants/size.dart';

class DocumentsAndLockersWidget extends StatefulWidget {
  const DocumentsAndLockersWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DocumentsAndLockersWidget> createState() =>
      _DocumentsAndLockersWidgetState();
}

class _DocumentsAndLockersWidgetState extends State<DocumentsAndLockersWidget> {
  final _itemList = <String>[];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DottedBorder(
                  color: Colors.black,
                  strokeWidth: 1,
                  radius: const Radius.circular(10),
                  child: Container(
                    color: const Color(0xFFEBE7F7),
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
              ],
            ),
          ),
          SizedBox(
            height: MySize.kSizeBoxHeight20,
          ),
          Text(
            'All Files',
            style: TextStyle(fontSize: MySize.kHeading2),
          ),
          SizedBox(
            height: MySize.kSizeBoxHeight20,
          ),
        ],
      ),
    );
  }
}