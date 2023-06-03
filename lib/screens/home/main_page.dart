import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../../constants/colors.dart';
import '../dashboard/dashboard_page.dart';
import '../stories/stories_page.dart';
import 'home_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = DashboardNavigator(0).newCurrentState();
  bool _isSpeedDialOpen = false;

  List<Widget> pages = const [
      HomePage(),
    DashboardPage(),
    StoriesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (int newIndex) {
            setState(() {
              if (newIndex == 3) { // Check if "Social" icon was tapped
                _isSpeedDialOpen = true;
              } else {
                currentIndex = newIndex;
                _isSpeedDialOpen = false;
              }
            });
          },
          selectedItemColor: MyColors.kSecondaryTextColor,
          unselectedItemColor: Colors.black,

          items: const  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: ImageIcon(AssetImage('assets/icons/home-2.png'),size: 20,),
            ),
            BottomNavigationBarItem(
              label: 'Dashboard',
              icon: ImageIcon(AssetImage('assets/icons/pixabay.png'),size: 20,),
            ),
            BottomNavigationBarItem(
              label: 'Stories',
              icon: ImageIcon(AssetImage('assets/icons/story.png'),size: 20,),
            ),
            BottomNavigationBarItem(
              label: 'Social',
              icon: ImageIcon(AssetImage('assets/icons/slack.png'),size: 20,),
            ),
          ]),

      floatingActionButton: _isSpeedDialOpen
          ? SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child:  Image.asset('assets/instagram.png',height: 30,),
            label: 'Instagram',
            onTap: () {},
          ),
          SpeedDialChild(
            child: Image.asset('assets/facebook.png',height: 30,),
            label: 'Facebook',
            onTap: () {},
          ),
          SpeedDialChild(
            child: Image.asset('assets/linkedin.png',height: 30,),
            label: 'Linkedin',
              onTap: () {},
          ),
          SpeedDialChild(
            child: Image.asset('assets/whatsapp.png',height: 30,),
            label: 'Whatsapp',
              onTap: () {},
          ),
        ],
        closeManually: true,
        onOpen: () {},
        onClose: () => setState(() => _isSpeedDialOpen = false),
      )
          : null,

    );
  }
}

class DashboardNavigator {
  int currentState = 0;
  DashboardNavigator(this.currentState);
  int newCurrentState(){
    return currentState;
  }
}