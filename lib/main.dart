import 'package:flutter/material.dart';
import 'package:planty_app_v2/bottom%20tabbar%20screen/bottom_tab_bar_screen.dart';

void main() {
  runApp(const PlantyApp());
}

class PlantyApp extends StatelessWidget {
  const PlantyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomTabBarScreen(),
    );
  }
}
