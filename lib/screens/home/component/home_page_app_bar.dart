import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/right_to_left_screen.dart';
import '../notification_page.dart';
import '../profile_page.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0XFF0f172a),
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 5),
          child: Container(
            width: 45,
            decoration: BoxDecoration(
              color: MyColors.kAppBarIconBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  RightToLeftRoute(
                    page: const NotificationPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 18,
              ),
              tooltip: 'Notifications',
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 5),
          child: Container(
            width: 45,
            decoration: BoxDecoration(
              color: MyColors.kAppBarIconBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  RightToLeftRoute(
                    page: const ProfilePage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 18,
              ),
              tooltip: 'Profile',
            ),
          ),
        ),
      ],
    );
  }
}
