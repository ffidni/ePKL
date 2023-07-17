import 'package:epkl/shared/shared_values.dart';
import 'package:epkl/shared/theme.dart';
import 'package:epkl/ui/home_page.dart';
import 'package:epkl/ui/jurnal_page.dart';
import 'package:epkl/ui/login_page.dart';
import 'package:epkl/ui/profile_page.dart';
import 'package:epkl/ui/tempat_pkl_page.dart';
import 'package:epkl/ui/tugas_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: greenColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: whiteColor,
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                SizedBox(
                  width: 150,
                  child: Image.asset("assets/main-logo.png"),
                ),
                Text(
                  "Muhammad Haikal",
                  style: blackText.copyWith(fontSize: 14),
                ),
                Text(
                  "indiff@gmail.com",
                  style: greyText.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(color: whiteColor, fontSize: 16),
                  ),
                  leading:
                      Icon(Icons.account_circle, size: 32, color: whiteColor),
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: ProfilePage(),
                    );
                  },
                ),
                const SizedBox(height: 5),
                ListTile(
                  title: Text(
                    'Logout',
                    style: TextStyle(color: whiteColor, fontSize: 16),
                  ),
                  leading: Icon(
                    Icons.arrow_back_ios_new,
                    size: 32,
                    color: whiteColor,
                  ),
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    "/login",
                    (route) => false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PersistentTab extends StatelessWidget {
  final PersistentTabController _controller = PersistentTabController();

  PersistentTab({super.key});

  void openDrawer() {
    _tabKey.currentState!.openEndDrawer();
  }

  List<PersistentBottomNavBarItem> _buildNavItems() {
    return navigationList
        .map(
          (e) => PersistentBottomNavBarItem(
            icon: e['icon'],
            title: e['label'],
            activeColorPrimary: greenColor,
            inactiveColorPrimary: greyColor,
          ),
        )
        .toList();
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(openDrawer: openDrawer),
      TugasPage(),
      JurnalPage(),
      TempatPKLPage(),
    ];
  }

  final GlobalKey<ScaffoldState> _tabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _tabKey,
      endDrawer: CustomDrawer(),
      body: PersistentTabView(
        context,
        controller: _controller,
        confineInSafeArea: true,
        backgroundColor: whiteColor,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        // decoration: NavBarDecoration(
        //   borderRadius: BorderRadius.circular(18),
        // ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        screens: _buildScreens(),
        items: _buildNavItems(),
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }
}
