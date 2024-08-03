import 'package:flutter/material.dart';
import 'package:planty_app_v2/diagnose/diagnose_screen.dart';
import 'package:planty_app_v2/help/help_screen.dart';
import 'package:planty_app_v2/my_garden/my_garden_screen.dart';
import 'package:planty_app_v2/sign_up/widget/scan_screen.dart';
import '../home/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomTabBarScreen extends StatefulWidget {
  const BottomTabBarScreen({super.key});

  @override
  State<BottomTabBarScreen> createState() => _BottomTabBarScreenState();
}

class _BottomTabBarScreenState extends State<BottomTabBarScreen> {
  int tabIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const DiagnoseScreen(),
    const ScanScreen(),
    const MyGardenScreen(),
    const HelpScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: (index) {
          setState(() {
            tabIndex = index;
          });
        },
        selectedItemColor: const Color(0xFF9AE016),
        unselectedItemColor: const Color(0xFF35383E),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home_inactive.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home_active.svg',
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/diagnose_inactive.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/diagnose_active.svg',
            ),
            label: 'Diagnose',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/scan_inactive.svg'),
            activeIcon: SvgPicture.asset('assets/icons/scan_active.svg'),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/my_garden_inactive.svg'),
            activeIcon: SvgPicture.asset('assets/icons/my_garden_active.svg'),
            label: 'My Garden',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/help_inactive.svg'),
            activeIcon: SvgPicture.asset('assets/icons/help_active.svg'),
            label: 'Help',
          ),
        ],
      ),
    );
  }
}
