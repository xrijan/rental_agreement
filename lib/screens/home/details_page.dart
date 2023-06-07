import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/details_page_widget.dart';


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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: DetailsPageWidget(
          current: current,
        ),
      ),
    );
  }
}
