import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/asset_path.dart';
import 'package:saulefna/core/config_size.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  List<Widget> _buildScreens() {
    return [
Center(child: Text('iin'),),
      Center(child: Text('iin'),),
      Center(child: Text('iin'),),
      Center(child: Text('iin'),),
      Center(child: Text('iin'),),
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),  PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),  PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),  PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView( context,

      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 500),
      ),
      navBarStyle: NavBarStyle.style7,);
  }
}
// GNav(
// selectedIndex: 3,
// rippleColor: Colors.white,
// // tab button ripple color when pressed
// hoverColor: Colors.white,
// // tab button hover color
// haptic: true, // haptic feedback
// // tabBorderRadius: 15,
//
// tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
// // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
// tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
// blurRadius: 8)], // tab button shadow
// curve: Curves.easeOutExpo, // tab animation curves
// duration: const Duration(milliseconds: 900), // tab animation duration
// gap: 10 , // the tab button gap between icon and text
// color: Colors.grey[800], // unselected icon color
// activeColor: Colors.purple, // selected icon and text color
// iconSize: ConfigSize.screenHeight!*.028169,
//
// textStyle: TextStyle(fontSize: ConfigSize.screenHeight!*.016,
// fontWeight: FontWeight.w700,
// color: Color(0xFF000073),
//
// ),// tab button icon size
// tabBackgroundColor: Colors.white, // selected tab background color
// padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//
// tabs: const [
//
//
//
// GButton(icon: Icons.person,text: StringManager.me,textStyle: TextStyle(
//
// ),),
// GButton(icon: Icons.comment,text: StringManager.massage,),
// GButton(icon: Icons.explore, text: StringManager.explore,),
// GButton(icon: Icons.home, text: StringManager.homePage,),
// ],
// ),