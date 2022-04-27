import 'package:ez_go_final/presentation/views/bookings_upcoming_view.dart';
import 'package:ez_go_final/presentation/views/earnings_view.dart';
import 'package:ez_go_final/presentation/views/hosting_user_profile_view.dart';
import 'package:ez_go_final/presentation/views/tab_bar.dart';
import 'package:ez_go_final/presentation/views/your_listings_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PersistentTabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        navBarHeight: 68,
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        // This needs to be true if you want to move up the screen when keyboard appears.
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),

        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style6, // Choose the nav bar style with this property.
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      TabBarScreen(),
      Earnings(),
      YourListing(),
      HostingUserProfile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        contentPadding: 0,
        icon: ImageIcon(AssetImage('assets/images/backpack_black_24dp.png',),size: 100,),
        title: ("Bookings"),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        activeColorPrimary: Color(0xffF51C17),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 0,
        icon: Icon(Icons.local_atm),
        title: ("Earning"),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        activeColorPrimary: Color(0xffF51C17),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 0,
        icon: Icon(Icons.speed),
        title: ("Listing"),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        activeColorPrimary: Color(0xffF51C17),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 0,
        icon: Icon(Icons.person),
        title: ("Profile"),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        activeColorPrimary: Color(0xffF51C17),
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }
}
