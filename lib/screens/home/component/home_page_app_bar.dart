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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: SizedBox(
            height: 75,
            child: Image.asset(
              'assets/temp_logo.png',
              fit: BoxFit.cover,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            Text(
              'Hello, User',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            SizedBox(height: 4,),
            Text(
              'Find Top Services with Fixed Price',
              style: TextStyle(
                  color: MyColors.kSecondaryTextColor,
                  fontWeight: FontWeight.normal,
                  fontSize: 9),
            )
          ],
        ),
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
      ),
    );
  }
}
