import 'package:flutter/material.dart';


class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onPressed;
  const AppBarWidget({Key? key, required this.title, required this.onPressed}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: widget.onPressed,
        icon: const ImageIcon(
          AssetImage('assets/icons/angle-left.png'),
          color: Colors.black,
          size: 30,
        ),
      ),
      title: Text(
        widget.title,
        style: const TextStyle(color: Colors.black),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }
}
